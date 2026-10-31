mods=(
  # fabric-api
  # sodium
  # lithium
  # ferrite-core
  # immediatelyfast
  # entityculling
  # c2me-fabric
  # iris
  # continuity
  # modmenu
  # appleskin
  # jade
  # jei
  # xaeros-minimap
  # xaeros-world-map
  # simple-voice-chat
  # 3dskinlayers
  # farmers-delight-refabricated
  # tectonic
  # terralith
  # presence-footsteps
  # visuality
  # fallingleaves
  #
  

  # modulation
  # origins-legacy
  # styled-chat
  # fabrictailor
  # horseman

  waystones
  universal-graves
  natures-compass
)

for mod in "${mods[@]}"; do
  echo "Installing $mod"
  packwiz modrinth install "$mod" --yes || exit 1
done
