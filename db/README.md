# Database migrations

## Plan

- [ ] Design a PDM (Physical Data Model) that will implement the functionality described in the DB API endpoints.
- [ ] Implement PDM in a migration tool, preferably and very likely, Python's alembic.
- [ ] Code and test a script to pass the DSN through CLI, for security reasons and ease of use.
- [ ] Deploy.

## File structure

1. /alembic (Enforced by alembic)
    1. /versions (Here lies the actual migrations)
    2. env.py
    3. script.py.mako
2. /model
    1. major.minor.revision.png
3. db.py
