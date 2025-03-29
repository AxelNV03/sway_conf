#!/bin/bash

# Actualiza los repositorios y el sistema
echo "Actualizando el sistema..."
sudo pacman -Syu --noconfirm

# Elimina foot si está instalado
echo "Eliminando foot si está instalado..."
sudo pacman -Rns --noconfirm foot

# Instala Kitty desde los repositorios oficiales
echo "Instalando Kitty..."
sudo pacman -S --noconfirm kitty

# Crea el directorio de configuración de Kitty si no existe
echo "Creando directorio de configuración de Kitty..."
mkdir -p ~/.config/kitty

# Copia un archivo de configuración predeterminado (si tienes uno, puedes personalizarlo aquí)
# Si no tienes un archivo de configuración, puedes crear uno básico
echo "Configurando Kitty..."
echo "# Configuración básica de Kitty" > ~/.config/kitty/kitty.conf
echo "font_family FiraCode" >> ~/.config/kitty/kitty.conf
echo "font_size 14.0" >> ~/.config/kitty/kitty.conf
echo "enable_ligatures yes" >> ~/.config/kitty/kitty.conf

# Finalización
echo "Kitty ha sido instalado y configurado correctamente."