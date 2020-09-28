# YAPF Python Code Formatter
**Forked from [Alexander Melde's repo](https://github.com/AlexanderMelde/yapf-action)**

[![GitHub issues](https://img.shields.io/github/issues/block42-blockchain-company/yapf-action?style=flat-square)](https://github.com/block42-blockchain-company/yapf-action/issues) [![GitHub license](https://img.shields.io/github/license/block42-blockchain-company/yapf-action?style=flat-square)](https://github.com/block42-blockchain-company/yapf-action/blob/master/LICENSE) [![GitHub stars](https://img.shields.io/github/stars/block42-blockchain-company/yapf-action?style=flat-square)](https://github.com/block42-blockchain-company/yapf-action/stargazers)

A GitHub action that runs [YAPF](https://github.com/google/yapf) to format your python code.

Once Configured, your action workflow will succeed only if your code is formatted in YAPF style.

The action runs `yapf`:
- SUCCESS: exit-code=zero → code got YAPF-formatted
- FAIL: exit-code=non-zero → syntax or program error

## Usage
To use this action in your repository, create a file like `.github/workflows/yapf_check.yml` with the following content:

```
name: YAPF Formatting Check
on: [push]
jobs:
  formatting-check:
    name: Formatting Check
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v2
    - name: run YAPF to format the python code
      uses: block42-blockchain-company/yapf-action
      with:
        args: --verbose
```

You can pass any other [YAPF parameter](https://github.com/google/yapf#usage) using the `args` setting, e.g. for 
setting a different code style (default is PEP8), but you can also remove the `with` section entirely if you wish.

If you want to exclude a certain directory, you can use the args field like 
this: `args: --verbose --exclude '**/tests/**'`. 
Thank you [@pksol](https://github.com/pksol) for the [example](https://github.com/AlexanderMelde/yapf-action/issues/1).
