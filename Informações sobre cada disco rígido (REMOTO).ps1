
                # Obtém informações sobre o disco rígido
                $diskInfo = Get-WmiObject Win32_DiskDrive
                $physicalDisks = Get-PhysicalDisk

                # Exibe informações sobre cada disco físico
                foreach ($disk in $physicalDisks) {
                Write-Host "Nome do Disco: $($disk.FriendlyName)"
                Write-Host "Tamanho Total: $($disk.Size / 1GB) GB"
                Write-Host "Modelo: $($disk.Model)"
                Write-Host "Interface: $($disk.MediaType)"
                Write-Host "--------------------------------------------------"

                }
                # Exibe informações sobre cada disco rígido
                foreach ($disk in $diskInfo) {
                    Write-Host "Nome do Disco: $($disk.Caption)"
                    Write-Host "Tamanho Total: $($disk.Size / 1GB) GB"
                    Write-Host "Modelo: $($disk.Model)"
                    Write-Host "Interface: $($disk.InterfaceType)"
                    Write-Host "Número de Série: $($disk.SerialNumber)"
                    Write-Host "--------------------------------------------------"
                }

                # Exibe informações sobre as partições do disco
                $partitionInfo = Get-WmiObject Win32_DiskPartition

                foreach ($partition in $partitionInfo) {
                    Write-Host "Número da Partição: $($partition.DeviceID)"
                    Write-Host "Tamanho Total da Partição: $($partition.Size / 1GB) GB"
                    Write-Host "Tipo de Partição: $($partition.Type)"
                    Write-Host "--------------------------------------------------"
                }

                # Exibe informações sobre os volumes do disco
                $volumeInfo = Get-WmiObject Win32_LogicalDisk

                foreach ($volume in $volumeInfo) {
                    Write-Host "Letra do Volume: $($volume.DeviceID)"
                    Write-Host "Tamanho Total do Volume: $($volume.Size / 1GB) GB"
                    Write-Host "Espaço Livre no Volume: $($volume.FreeSpace / 1GB) GB"
                    Write-Host "Sistema de Arquivos: $($volume.FileSystem)"
                    Write-Host "--------------------------------------------------"
                }
               
                pause
                cls
            }
