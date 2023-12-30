$comeco = Read-Host "Você irá executar os comandos em qual HostName?"

            try {
                $result = Invoke-Command -ComputerName $comeco -ScriptBlock {
                    # Obtém informações sobre a memória física do sistema
                    $memoria = Get-CimInstance -ClassName Win32_PhysicalMemory | Measure-Object -Property Capacity -Sum

                    # Converte a capacidade total para gigabytes
                    $memoriaTotalGB = [math]::Round($memoria.Sum / 1GB, 2)

                    "Memória RAM Total: $memoriaTotalGB GB"
                }

                Write-Host $result

            } catch {
                Write-Host "Erro ao conectar-se ao host $comeco. Verifique o nome do host e a conectividade."
            } finally {
                Pause
                Clear-Host
            }
        }
