# SQL for Interviews

This repository collects solved SQL interview problems sourced from LeetCode and other interview preparation sites. It's organized for quick reference and practice when preparing for technical interviews.

**Why this repo**
- **Focused:** Curated problems that commonly appear in interviews.
- **Practical:** Solutions written in plain SQL with notes and trade-offs.
- **Organized:** Problems grouped by source and difficulty for easy browsing.

Conventions
- Each problem solution is a single `.sql` file containing:
	- A short header with the **problem name**, **source** and a **link** to the original problem.
	- A brief explanation or approach note in SQL comments.
	- One or more SQL solution variants labeled with engine-specific notes when necessary.
- File naming: `{source}-{number}-{short-title}.sql` or `{number}-{short-title}.sql` for LeetCode.
- Use standard SQL where possible. When using engine-specific syntax, note the target (MySQL, PostgreSQL, SQLite).

How to use
- Browse and open the `.sql` file for a problem you want to review.
- To run a solution locally, copy the SQL into your preferred SQL engine (SQLite, MySQL, PostgreSQL). If a sample dataset is included, create the tables and insert sample rows before running.

Example file header (top of an `.sql` file):
```
-- Problem: Two Sum (LeetCode 1)
-- Source: https://leetcode.com/problems/two-sum/
-- Approach: Use a hash-like join or window functions depending on engine.

-- Solution (MySQL):
SELECT a.id AS id1, b.id AS id2
FROM nums a
JOIN nums b ON a.id <> b.id AND a.value + b.value = 9
LIMIT 1;
```

Contributing
- Contributions welcome — add new problems, improved explanations, or alternate solutions.
- When adding a solution:
	1. Create a file in the appropriate subfolder under `solutions/`.
	2. Follow the file naming and header conventions above.
	3. Include a link to the original problem and a short explanation.

Suggested next steps
- Add a `CONTRIBUTING.md` and simple issues/PR template for consistency.
- Add a small `scripts/` directory with helper scripts to run/example datasets for SQLite.

License & Contact
- This repo is intended for educational use. Add a license (e.g., MIT) if you want to allow reuse.
- Questions or suggestions: open an issue or submit a PR.

Happy practicing — good luck with interviews!

