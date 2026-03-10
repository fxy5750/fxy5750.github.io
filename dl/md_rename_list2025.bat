@echo off
cls

:: 设置目标路径变量
set "TARGET_PATH=C:\Users\Public\Documents\MarvelousDesigner\New Assets\Fabric"

echo 正在定位至: %TARGET_PATH%
echo ---------------------------------------

:: 检查路径是否存在
if not exist "%TARGET_PATH%" (
    echo [错误] 找不到 MD 布料文件夹，请检查路径是否正确。
    pause
    exit
)

:: 切换到目标目录
cd /d "%TARGET_PATH%"

:MENU
echo 请选择重命名模式 (仅兼容 Marvelous Designer 2025 版):
echo [A] 设置为：英语 + 中文
echo [B] 设置为：纯英语
echo ---------------------------------------
set /p user_choice="请输入选项 [A/B] 并回车: "

if /i "%user_choice%"=="A" goto MODE_A
if /i "%user_choice%"=="B" goto MODE_B
echo 无效选择，请重新输入。
goto MENU

:MODE_A
echo 正在应用：英语 + 中文 模式...

:: 根目录文件
call :RenameAction "V2_Woven_Voile_1" "V2_Woven_Voile_1_巴厘纱"
call :RenameAction "(Default for Simulation)" "(Default for Simulation)_默认模拟"
call :RenameAction "V2_Animal_Alternatives_VeganFur_1" "V2_Animal_Alternatives_VeganFur_1_仿皮草(环保)"
call :RenameAction "V2_Animal_Alternatives_VeganLeather_1" "V2_Animal_Alternatives_VeganLeather_1_人造革(环保)"
call :RenameAction "V2_Animal_Alternatives_VeganSuede_1" "V2_Animal_Alternatives_VeganSuede_1_仿麂皮(环保)"
call :RenameAction "V2_Cut_Sew_Knit_CrepeKnit_1" "V2_Cut_Sew_Knit_CrepeKnit_1_针织绉布"
call :RenameAction "V2_Cut_Sew_Knit_Crochet_1" "V2_Cut_Sew_Knit_Crochet_1_钩编织物"
call :RenameAction "V2_Cut_Sew_Knit_DobbyMesh_1" "V2_Cut_Sew_Knit_DobbyMesh_1_多比网眼布"
call :RenameAction "V2_Cut_Sew_Knit_DoubleKnit_Interlock_1" "V2_Cut_Sew_Knit_DoubleKnit_Interlock_1_双面针织布"
call :RenameAction "V2_Cut_Sew_Knit_Fleece_1" "V2_Cut_Sew_Knit_Fleece_1_抓绒"
call :RenameAction "V2_Cut_Sew_Knit_FrenchTerry_1" "V2_Cut_Sew_Knit_FrenchTerry_1_毛圈卫衣布"
call :RenameAction "V2_Cut_Sew_Knit_ITY_MatteJersey_1" "V2_Cut_Sew_Knit_ITY_MatteJersey_1_ITY哑光汗布"
call :RenameAction "V2_Cut_Sew_Knit_JacquardKnit_1" "V2_Cut_Sew_Knit_JacquardKnit_1_提花针织"
call :RenameAction "V2_Cut_Sew_Knit_Jersey_1" "V2_Cut_Sew_Knit_Jersey_1_单面针织汗布"
call :RenameAction "V2_Cut_Sew_Knit_Lace_1" "V2_Cut_Sew_Knit_Lace_1_蕾丝针织"
call :RenameAction "V2_Cut_Sew_Knit_LoopTerry_1" "V2_Cut_Sew_Knit_LoopTerry_1_毛圈布"
call :RenameAction "V2_Cut_Sew_Knit_LowGaugeKnit_1" "V2_Cut_Sew_Knit_LowGaugeKnit_1_粗针针织"
call :RenameAction "V2_Cut_Sew_Knit_Mesh_Tulle_1" "V2_Cut_Sew_Knit_Mesh_Tulle_1_网眼网纱"
call :RenameAction "V2_Cut_Sew_Knit_Neoprene_Scuba_1" "V2_Cut_Sew_Knit_Neoprene_Scuba_1_太空棉"
call :RenameAction "V2_Cut_Sew_Knit_Pique_1" "V2_Cut_Sew_Knit_Pique_1_珠地布"
call :RenameAction "V2_Cut_Sew_Knit_Pointelle_1" "V2_Cut_Sew_Knit_Pointelle_1_镂空针织布"
call :RenameAction "V2_Cut_Sew_Knit_PolarFleece_1" "V2_Cut_Sew_Knit_PolarFleece_1_极地摇粒绒"
call :RenameAction "V2_Cut_Sew_Knit_Ponte_1" "V2_Cut_Sew_Knit_Ponte_1_罗马布"
call :RenameAction "V2_Cut_Sew_Knit_QuiltedKnit_1" "V2_Cut_Sew_Knit_QuiltedKnit_1_绗缝针织"
call :RenameAction "V2_Cut_Sew_Knit_Rib_1" "V2_Cut_Sew_Knit_Rib_1_针织罗纹"
call :RenameAction "V2_Cut_Sew_Knit_Sherpa_1" "V2_Cut_Sew_Knit_Sherpa_1_羊羔绒"
call :RenameAction "V2_Cut_Sew_Knit_Tricot_1" "V2_Cut_Sew_Knit_Tricot_1_经编特里科"
call :RenameAction "V2_Cut_Sew_Knit_Velour_1" "V2_Cut_Sew_Knit_Velour_1_天鹅绒针织"
call :RenameAction "V2_Cut_Sew_Knit_Velvet_1" "V2_Cut_Sew_Knit_Velvet_1_丝绒针织"
call :RenameAction "V2_Cut_Sew_Knit_Waffle_1" "V2_Cut_Sew_Knit_Waffle_1_华夫格"
call :RenameAction "V2_Leather_Full_Grain" "V2_Leather_Full_Grain_头层皮革"
call :RenameAction "V2_Non-Fabric_PVC_1" "V2_Non-Fabric_PVC_1_PVC材质"
call :RenameAction "V2_Non-Fabric_Trim_Hardware" "V2_Non-Fabric_Trim_Hardware_五金辅料"
call :RenameAction "V2_Non-Fabric_Tyvek_1" "V2_Non-Fabric_Tyvek_1_杜邦纸"
call :RenameAction "V2_Woven_Boucle_1" "V2_Woven_Boucle_1_圈圈呢"
call :RenameAction "V2_Woven_Canvas_1" "V2_Woven_Canvas_1_帆布"
call :RenameAction "V2_Woven_Challis_1" "V2_Woven_Challis_1_人造丝薄绸"
call :RenameAction "V2_Woven_Chambray_Oxford_1" "V2_Woven_Chambray_Oxford_1_青年布(牛津布)"
call :RenameAction "V2_Woven_Chiffon_1" "V2_Woven_Chiffon_1_雪纺"
call :RenameAction "V2_Woven_ClipJacquard_1" "V2_Woven_ClipJacquard_1_剪花提花"
call :RenameAction "V2_Woven_Corduroy_1" "V2_Woven_Corduroy_1_灯芯绒"
call :RenameAction "V2_Woven_Crepe_CDC_1" "V2_Woven_Crepe_CDC_1_双绉"
call :RenameAction "V2_Woven_Denim_1" "V2_Woven_Denim_1_牛仔布"
call :RenameAction "V2_Woven_Dewspo_1" "V2_Woven_Dewspo_1_迪丝宝(功能布)"
call :RenameAction "V2_Woven_Dobby_1" "V2_Woven_Dobby_1_小提花(多比)"
call :RenameAction "V2_Woven_DoubleWeave_1" "V2_Woven_DoubleWeave_1_双层机织物"
call :RenameAction "V2_Woven_Eyelet_1" "V2_Woven_Eyelet_1_镂空绣花布"
call :RenameAction "V2_Woven_Flannel_1" "V2_Woven_Flannel_1_法兰绒"
call :RenameAction "V2_Woven_Gauze_DoubleGauze_1" "V2_Woven_Gauze_DoubleGauze_1_双层纱"
call :RenameAction "V2_Woven_Georgette_1" "V2_Woven_Georgette_1_乔其纱"
call :RenameAction "V2_Woven_Jacquard_Brocade_1" "V2_Woven_Jacquard_Brocade_1_织锦提花"
call :RenameAction "V2_Woven_Melton_Boiled_1" "V2_Woven_Melton_Boiled_1_麦尔登呢"
call :RenameAction "V2_Woven_Memory_1" "V2_Woven_Memory_1_记忆布"
call :RenameAction "V2_Woven_Muslin_18X20" "V2_Woven_Muslin_18X20_白细布"
call :RenameAction "V2_Woven_Muslin_22X22" "V2_Woven_Muslin_22X22_白细布"
call :RenameAction "V2_Woven_Muslin_28X36" "V2_Woven_Muslin_28X36_白细布(标准)"
call :RenameAction "V2_Woven_Muslin_32X38" "V2_Woven_Muslin_32X38_白细布"
call :RenameAction "V2_Woven_Organza_1" "V2_Woven_Organza_1_欧根纱"
call :RenameAction "V2_Woven_Ottoman_1" "V2_Woven_Ottoman_1_横贡缎(奥斯曼)"
call :RenameAction "V2_Woven_Plaid_1" "V2_Woven_Plaid_1_格子布"
call :RenameAction "V2_Woven_Plain_1" "V2_Woven_Plain_1_平纹布"
call :RenameAction "V2_Woven_Poplin_1" "V2_Woven_Poplin_1_府绸"
call :RenameAction "V2_Woven_Ripstop_1" "V2_Woven_Ripstop_1_防撕裂布"
call :RenameAction "V2_Woven_Satin_1" "V2_Woven_Satin_1_缎面色丁"
call :RenameAction "V2_Woven_Seersucker_1" "V2_Woven_Seersucker_1_泡泡纱"
call :RenameAction "V2_Woven_Taffeta_1" "V2_Woven_Taffeta_1_塔夫绸"
call :RenameAction "V2_Woven_TRS_1" "V2_Woven_TRS_1_TRS西装料"
call :RenameAction "V2_Woven_Tweed_1" "V2_Woven_Tweed_1_粗花呢"
call :RenameAction "V2_Woven_Twill_1" "V2_Woven_Twill_1_斜纹布"
call :RenameAction "V2_Woven_Velvet_Velveteen_1" "V2_Woven_Velvet_Velveteen_1_平绒"

:: Elastic 子文件夹
call :RenameSubAction "Elastic\Knitted Elastic" "Elastic\Knitted Elastic_针织松紧带"
call :RenameSubAction "Elastic\Woven Elastic" "Elastic\Woven Elastic_机织松紧带"
goto END

:MODE_B
echo 正在恢复：纯英语 模式...

:: 根目录文件还原
call :RenameAction "V2_Woven_Voile_1_巴厘纱" "V2_Woven_Voile_1"
call :RenameAction "(Default for Simulation)_默认模拟" "(Default for Simulation)"
call :RenameAction "V2_Animal_Alternatives_VeganFur_1_仿皮草(环保)" "V2_Animal_Alternatives_VeganFur_1"
call :RenameAction "V2_Animal_Alternatives_VeganLeather_1_人造革(环保)" "V2_Animal_Alternatives_VeganLeather_1"
call :RenameAction "V2_Animal_Alternatives_VeganSuede_1_仿麂皮(环保)" "V2_Animal_Alternatives_VeganSuede_1"
call :RenameAction "V2_Cut_Sew_Knit_CrepeKnit_1_针织绉布" "V2_Cut_Sew_Knit_CrepeKnit_1"
call :RenameAction "V2_Cut_Sew_Knit_Crochet_1_钩编织物" "V2_Cut_Sew_Knit_Crochet_1"
call :RenameAction "V2_Cut_Sew_Knit_DobbyMesh_1_多比网眼布" "V2_Cut_Sew_Knit_DobbyMesh_1"
call :RenameAction "V2_Cut_Sew_Knit_DoubleKnit_Interlock_1_双面针织布" "V2_Cut_Sew_Knit_DoubleKnit_Interlock_1"
call :RenameAction "V2_Cut_Sew_Knit_Fleece_1_抓绒" "V2_Cut_Sew_Knit_Fleece_1"
call :RenameAction "V2_Cut_Sew_Knit_FrenchTerry_1_毛圈卫衣布" "V2_Cut_Sew_Knit_FrenchTerry_1"
call :RenameAction "V2_Cut_Sew_Knit_ITY_MatteJersey_1_ITY哑光汗布" "V2_Cut_Sew_Knit_ITY_MatteJersey_1"
call :RenameAction "V2_Cut_Sew_Knit_JacquardKnit_1_提花针织" "V2_Cut_Sew_Knit_JacquardKnit_1"
call :RenameAction "V2_Cut_Sew_Knit_Jersey_1_单面针织汗布" "V2_Cut_Sew_Knit_Jersey_1"
call :RenameAction "V2_Cut_Sew_Knit_Lace_1_蕾丝针织" "V2_Cut_Sew_Knit_Lace_1"
call :RenameAction "V2_Cut_Sew_Knit_LoopTerry_1_毛圈布" "V2_Cut_Sew_Knit_LoopTerry_1"
call :RenameAction "V2_Cut_Sew_Knit_LowGaugeKnit_1_粗针针织" "V2_Cut_Sew_Knit_LowGaugeKnit_1"
call :RenameAction "V2_Cut_Sew_Knit_Mesh_Tulle_1_网眼网纱" "V2_Cut_Sew_Knit_Mesh_Tulle_1"
call :RenameAction "V2_Cut_Sew_Knit_Neoprene_Scuba_1_太空棉" "V2_Cut_Sew_Knit_Neoprene_Scuba_1"
call :RenameAction "V2_Cut_Sew_Knit_Pique_1_珠地布" "V2_Cut_Sew_Knit_Pique_1"
call :RenameAction "V2_Cut_Sew_Knit_Pointelle_1_镂空针织布" "V2_Cut_Sew_Knit_Pointelle_1"
call :RenameAction "V2_Cut_Sew_Knit_PolarFleece_1_极地摇粒绒" "V2_Cut_Sew_Knit_PolarFleece_1"
call :RenameAction "V2_Cut_Sew_Knit_Ponte_1_罗马布" "V2_Cut_Sew_Knit_Ponte_1"
call :RenameAction "V2_Cut_Sew_Knit_QuiltedKnit_1_绗缝针织" "V2_Cut_Sew_Knit_QuiltedKnit_1"
call :RenameAction "V2_Cut_Sew_Knit_Rib_1_针织罗纹" "V2_Cut_Sew_Knit_Rib_1"
call :RenameAction "V2_Cut_Sew_Knit_Sherpa_1_羊羔绒" "V2_Cut_Sew_Knit_Sherpa_1"
call :RenameAction "V2_Cut_Sew_Knit_Tricot_1_经编特里科" "V2_Cut_Sew_Knit_Tricot_1"
call :RenameAction "V2_Cut_Sew_Knit_Velour_1_天鹅绒针织" "V2_Cut_Sew_Knit_Velour_1"
call :RenameAction "V2_Cut_Sew_Knit_Velvet_1_丝绒针织" "V2_Cut_Sew_Knit_Velvet_1"
call :RenameAction "V2_Cut_Sew_Knit_Waffle_1_华夫格" "V2_Cut_Sew_Knit_Waffle_1"
call :RenameAction "V2_Leather_Full_Grain_头层皮革" "V2_Leather_Full_Grain"
call :RenameAction "V2_Non-Fabric_PVC_1_PVC材质" "V2_Non-Fabric_PVC_1"
call :RenameAction "V2_Non-Fabric_Trim_Hardware_五金辅料" "V2_Non-Fabric_Trim_Hardware"
call :RenameAction "V2_Non-Fabric_Tyvek_1_杜邦纸" "V2_Non-Fabric_Tyvek_1"
call :RenameAction "V2_Woven_Boucle_1_圈圈呢" "V2_Woven_Boucle_1"
call :RenameAction "V2_Woven_Canvas_1_帆布" "V2_Woven_Canvas_1"
call :RenameAction "V2_Woven_Challis_1_人造丝薄绸" "V2_Woven_Challis_1"
call :RenameAction "V2_Woven_Chambray_Oxford_1_青年布(牛津布)" "V2_Woven_Chambray_Oxford_1"
call :RenameAction "V2_Woven_Chiffon_1_雪纺" "V2_Woven_Chiffon_1"
call :RenameAction "V2_Woven_ClipJacquard_1_剪花提花" "V2_Woven_ClipJacquard_1"
call :RenameAction "V2_Woven_Corduroy_1_灯芯绒" "V2_Woven_Corduroy_1"
call :RenameAction "V2_Woven_Crepe_CDC_1_双绉" "V2_Woven_Crepe_CDC_1"
call :RenameAction "V2_Woven_Denim_1_牛仔布" "V2_Woven_Denim_1"
call :RenameAction "V2_Woven_Dewspo_1_迪丝宝(功能布)" "V2_Woven_Dewspo_1"
call :RenameAction "V2_Woven_Dobby_1_小提花(多比)" "V2_Woven_Dobby_1"
call :RenameAction "V2_Woven_DoubleWeave_1_双层机织物" "V2_Woven_DoubleWeave_1"
call :RenameAction "V2_Woven_Eyelet_1_镂空绣花布" "V2_Woven_Eyelet_1"
call :RenameAction "V2_Woven_Flannel_1_法兰绒" "V2_Woven_Flannel_1"
call :RenameAction "V2_Woven_Gauze_DoubleGauze_1_双层纱" "V2_Woven_Gauze_DoubleGauze_1"
call :RenameAction "V2_Woven_Georgette_1_乔其纱" "V2_Woven_Georgette_1"
call :RenameAction "V2_Woven_Jacquard_Brocade_1_织锦提花" "V2_Woven_Jacquard_Brocade_1"
call :RenameAction "V2_Woven_Melton_Boiled_1_麦尔登呢" "V2_Woven_Melton_Boiled_1"
call :RenameAction "V2_Woven_Memory_1_记忆布" "V2_Woven_Memory_1"
call :RenameAction "V2_Woven_Muslin_18X20_白细布" "V2_Woven_Muslin_18X20"
call :RenameAction "V2_Woven_Muslin_22X22_白细布" "V2_Woven_Muslin_22X22"
call :RenameAction "V2_Woven_Muslin_28X36_白细布(标准)" "V2_Woven_Muslin_28X36"
call :RenameAction "V2_Woven_Muslin_32X38_白细布" "V2_Woven_Muslin_32X38"
call :RenameAction "V2_Woven_Organza_1_欧根纱" "V2_Woven_Organza_1"
call :RenameAction "V2_Woven_Ottoman_1_横贡缎(奥斯曼)" "V2_Woven_Ottoman_1"
call :RenameAction "V2_Woven_Plaid_1_格子布" "V2_Woven_Plaid_1"
call :RenameAction "V2_Woven_Plain_1_平纹布" "V2_Woven_Plain_1"
call :RenameAction "V2_Woven_Poplin_1_府绸" "V2_Woven_Poplin_1"
call :RenameAction "V2_Woven_Ripstop_1_防撕裂布" "V2_Woven_Ripstop_1"
call :RenameAction "V2_Woven_Satin_1_缎面色丁" "V2_Woven_Satin_1"
call :RenameAction "V2_Woven_Seersucker_1_泡泡纱" "V2_Woven_Seersucker_1"
call :RenameAction "V2_Woven_Taffeta_1_塔夫绸" "V2_Woven_Taffeta_1"
call :RenameAction "V2_Woven_TRS_1_TRS西装料" "V2_Woven_TRS_1"
call :RenameAction "V2_Woven_Tweed_1_粗花呢" "V2_Woven_Tweed_1"
call :RenameAction "V2_Woven_Twill_1_斜纹布" "V2_Woven_Twill_1"
call :RenameAction "V2_Woven_Velvet_Velveteen_1_平绒" "V2_Woven_Velvet_Velveteen_1"

:: 子文件夹还原
call :RenameSubAction "Elastic\Knitted Elastic_针织松紧带" "Elastic\Knitted Elastic"
call :RenameSubAction "Elastic\Woven Elastic_机织松紧带" "Elastic\Woven Elastic"
goto END

:RenameAction
if exist "%~1.zfab" (
    ren "%~1.zfab" "%~2.zfab"
)
goto :eof

:RenameSubAction
if exist "%~1.zfab" (
    ren "%~1.zfab" "%~n2.zfab"
)
goto :eof

:END
echo ---------------------------------------
echo 处理完成！请检查文件名。
pause