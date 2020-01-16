
Magical data repository backed by git annex.

To add a dataset:

1. create a directory under the `data/` directory named something memorable
2. copy all data file in there
3. add these files to git annex: `git annex add <files>`
4. *optional*: metadata
    - create a README.md file containing information about the dataset
    - add this file using normal git: `git add README.md`
5. `git commit` with a helpful message

## Pushing

A simple `git push` won't copy the annex information. So, when syncing back to
github, it's important to run `git annex sync` to keep both the master and
git-annex branches in sync.

## Repo setup

Datasets are currently stored in a Wasabi S3 repository. The remote should already be configured so when you check out the repo, enable the remote:

`git annex enableremote wasabi`

Then you should have access to the remote and can run commands like, e.g.,
`git annex get pareto`

Additional information is [here](https://git-annex.branchable.com/tips/public_Amazon_S3_remote/)
and [here](https://git-annex.branchable.com/special_remotes/S3/).




