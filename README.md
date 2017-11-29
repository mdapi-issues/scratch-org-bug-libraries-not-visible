# sfdx-libraries-not-visible-mwe

> After creating a Library (`ContentWorkspace`) in a scratch org, the Library is not shown in "My Libraries" and cannot be queried using SOQL.

[![Build Status](https://travis-ci.org/amtrack/sfdx-libraries-not-visible-mwe.svg?branch=master)](https://travis-ci.org/amtrack/sfdx-libraries-not-visible-mwe)

## Reproduction

See gif (newly-created-library-not-visible.gif)

![newly-created-library-not-visible](newly-created-library-not-visible.gif "newly-created-library-not-visible")

Or create a scratch org and run anonymous apex or/and unit tests:

```console
$ sfdx force:org:create -f config/project-scratch-def.json -s
$ sfdx force:apex:execute -f anonymous-apex-library-test.apex
$ sfdx force:source:push
$ sfdx force:apex:test:run -l RunLocalTests -r human --wait 60
```

## Workaround

Thankfully the Salesforce Partner Support provided a workaround.

In the `config/project-scratch-def.json` file add `"hasSampleData": true`.
