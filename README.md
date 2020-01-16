
Magical data repository backed by git annex.

## Getting the data

Datasets are currently stored in a Wasabi S3 repository. The remote access
urls should already be configured. You just need to refresh the git-annex 
information and enable the remotes holding datafiles.

1) instal git and git-annex
2) clone the main repo from, e.g., github
3) go into the main repo and sync up the git-annex information: 
   `git annex sync`
4) enable the s3 bucket: `git annex enableremote wasabi`
5) download the datasets you want, e.g.:
   `git annex get sa_mouse_tracking`

Additional information is [here](https://git-annex.branchable.com/tips/public_Amazon_S3_remote/)
and [here](https://git-annex.branchable.com/special_remotes/S3/).

## Adding another dataset

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




