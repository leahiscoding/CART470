# Journal workflow

Each week has its own file, such as `journals/week-4.md`. Write the journal in that file. Keep `README.md` as the project index and the contract in `living-learning-contract.md`.

## Start a new week

Save and commit your current work first, then run this in the project terminal:

```sh
bash scripts/new-journal.sh 4
```

Use the new week's number. The command fetches GitHub's latest `main`, creates `Journal-4` from it, and creates `journals/week-4.md`. It stops if you have uncommitted changes, or if the journal or branch already exists, so your writing is protected.

If the branch already exists, switch to it instead of creating it again:

```sh
git switch Journal-4
```

Open `journals/week-4.md` and write your entry there. Use the week number matching your branch.

## Save and publish

After writing Week 4:

```sh
git add journals/week-4.md
git commit -m "Add Week 4 journal"
git push -u origin Journal-4
```

On GitHub, open a pull request with **base: main** and **compare: Journal-4**, then merge it when ready. The base is where the writing will go; compare is the branch containing your writing.

Start the next week with `bash scripts/new-journal.sh 5`. You do not need to edit the README to add a week: the "All journal entries" link shows the entire folder.

## If a conflict appears

Separate journal files avoid conflicts between different weeks. Git can still report a conflict if two branches edit the same lines of an existing file. Avoid replacing the README with a journal, and always start new work from the latest `main` using the command above.
