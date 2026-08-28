\# Contributing to Karino



Karino development follows a controlled sprint-based workflow.



\## Rules



\- Only implement the current approved sprint.

\- Read the relevant Karino blueprint before making changes.

\- Do not modify unrelated features.

\- Do not add unnecessary dependencies.

\- Never commit passwords, API keys, payment secrets, or production credentials.

\- Database changes must use Supabase migrations.

\- Authorization must be enforced server-side and through RLS where appropriate.

\- FIB is the only Karino V1 payment provider.

\- AI must run server-side and must never invent candidate qualifications.

\- Karino UI must remain modern, minimal, smooth, spacious, and consistent.

\- Every completed sprint must be tested before moving on.



\## Commit Examples



feat: add candidate profile domain



fix: prevent duplicate applications



security: restrict CV storage access



test: add membership expiry tests

