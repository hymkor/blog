@setlocal
@set PROMPT=$G$S
@for %%I in (%*) do ( goawk -f "%~dp0\header2codeblock.awk" %%I | dos2unix | sponge %%I )
@endlocal
