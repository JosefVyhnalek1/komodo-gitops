pro aktivování githooků je potřeba pustit git config core.hooksPath .githooks

mělo by to fungovat na windows, na macu i na linuxu

testováno na windows a na macu

na macu bylo ještě potřeba chmod +x .githooks/pre-commit


když změním libovolný .enc.env soubor novým envem, tak by se před commitem běh zašifrovat pomocí SOPS