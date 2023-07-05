# sfdx-libraries-not-visible-mwe

> After creating a Library (`ContentWorkspace`) in a scratch org, the Library is not shown in "My Libraries" and cannot be queried using SOQL.

## Reproduction

See gif (newly-created-library-not-visible.gif)

![newly-created-library-not-visible](newly-created-library-not-visible.gif "newly-created-library-not-visible")

Or create a scratch org and run anonymous apex or/and unit tests:

```console
$ sfdx org create scratch -f config/project-scratch-def.json -a mre-libraries-not-visible -d
$ sfdx apex run -f anonymous-apex-library-test.apex
$ sfdx project deploy start
$ sfdx apex run test -l RunLocalTests -w 10
```

[![Actions Status](https://github.com/mdapi-issues/scratch-org-bug-libraries-not-visible/workflows/Reproduce%20issue/badge.svg)](https://github.com/mdapi-issues/scratch-org-bug-libraries-not-visible/actions)

> Failing here means the reproduction was successful

## Workaround

Thankfully the Salesforce Partner Support provided a workaround.

In the `config/project-scratch-def.json` file add `"hasSampleData": true`.
