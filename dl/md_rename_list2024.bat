@echo off
cls

:: 设置目标路径变量
set "TARGET_PATH=C:\Users\Public\Documents\MarvelousDesigner\Assets\Materials\Fabric"

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
echo 请选择重命名模式 (仅兼容 Marvelous Designer 2024 版):
echo [A] 设置为：英语 + 中文 (如: Wool_羊毛.zfab)
echo [B] 设置为：纯英语     (如: Wool.zfab)
echo ---------------------------------------
set /p user_choice="请输入选项 [A/B] 并回车: "

if /i "%user_choice%"=="A" goto MODE_A
if /i "%user_choice%"=="B" goto MODE_B
echo 无效选择，请重新输入。
goto MENU

:MODE_A
echo 正在应用：英语 + 中文 模式...
:: 格式：ren "旧文件名" "新文件名"
:: 注意：这里包含了从纯英文转双语，以及从双语(重复操作)的兼容处理
call :RenameAction "Wool_Melton" "Wool_Melton_麦尔登呢"
call :RenameAction "(Default_for_Simulation)" "(Default_for_Simulation)_默认模拟"
call :RenameAction "(Default_v5.2)" "(Default_v5.2)_默认v5.2"
call :RenameAction "Cotton_14_Wale_Corduroy" "Cotton_14_Wale_Corduroy_棉14条灯芯绒"
call :RenameAction "Cotton_40s_Chambray" "Cotton_40s_Chambray_40支棉平纹府绸(青年布)"
call :RenameAction "Cotton_40s_Poplin" "Cotton_40s_Poplin_40支棉府绸"
call :RenameAction "Cotton_40s_Stretch_Poplin" "Cotton_40s_Stretch_Poplin_40支弹力棉府绸"
call :RenameAction "Cotton_50s_Poplin" "Cotton_50s_Poplin_50支棉府绸"
call :RenameAction "Cotton_Canvas" "Cotton_Canvas_棉帆布"
call :RenameAction "Cotton_Gabardine" "Cotton_Gabardine_棉华达呢"
call :RenameAction "Cotton_Heavy_Canvas" "Cotton_Heavy_Canvas_重磅棉帆布"
call :RenameAction "Cotton_Heavy_Twill" "Cotton_Heavy_Twill_重磅棉斜纹"
call :RenameAction "Cotton_Oxford" "Cotton_Oxford_牛津布"
call :RenameAction "Cotton_Plush" "Cotton_Plush_棉长毛绒"
call :RenameAction "Cotton_Sateen" "Cotton_Sateen_棉缎面"
call :RenameAction "Cotton_Stretch_Sateen" "Cotton_Stretch_Sateen_棉弹力缎面"
call :RenameAction "Cotton_Stretch_Velvet" "Cotton_Stretch_Velvet_棉弹力天鹅绒"
call :RenameAction "Cotton_Terry_Cloth" "Cotton_Terry_Cloth_棉毛圈布"
call :RenameAction "Cotton_Twill" "Cotton_Twill_棉斜纹"
call :RenameAction "Cotton_Voile" "Cotton_Voile_棉巴厘纱(轻薄平纹布)"
call :RenameAction "Denim_Lightweight" "Denim_Lightweight_轻质牛仔布"
call :RenameAction "Denim_Raw" "Denim_Raw_原色牛仔布"
call :RenameAction "Denim_Stretch" "Denim_Stretch_弹力牛仔布"
call :RenameAction "Fur_Angora" "Fur_Angora_安哥拉兔毛"
call :RenameAction "Fur_Fox" "Fur_Fox_狐狸毛"
call :RenameAction "Fur_Luxe_Cuddle" "Fur_Luxe_Cuddle_高档超柔拉舍尔毛绒"
call :RenameAction "Fur_Mink_Skin" "Fur_Mink_Skin_貂皮"
call :RenameAction "Fur_Mohair" "Fur_Mohair_马海毛"
call :RenameAction "Fur_Muskrat_Belly" "Fur_Muskrat_Belly_麝鼠腹皮"
call :RenameAction "Fur_Rabbit" "Fur_Rabbit_兔毛"
call :RenameAction "Interlining_Acetate_Lining" "Interlining_Acetate_Lining_醋酸纤维里布"
call :RenameAction "Interlining_Polyester_Satin_Lining" "Interlining_Polyester_Satin_Lining_涤纶色丁里布"
call :RenameAction "Knit_Cotton_Jersey" "Knit_Cotton_Jersey_全棉单面针织汗布"
call :RenameAction "Knit_Cotton_Rayon Jersey" "Knit_Cotton_Rayon Jersey_棉粘胶混纺汗布"
call :RenameAction "Knit_Fleece_Terry" "Knit_Fleece_Terry_抓绒毛圈布"
call :RenameAction "Knit_Pique_Jersey" "Knit_Pique_Jersey_珠地网眼针织布"
call :RenameAction "Knit_Ponte_Jersey" "Knit_Ponte_Jersey_罗马布(双面针织)"
call :RenameAction "Knit_Terry" "Knit_Terry_针织毛圈布"
call :RenameAction "Leather_Lambskin" "Leather_Lambskin_羔羊皮"
call :RenameAction "Linen" "Linen_亚麻"
call :RenameAction "Muslin_18X20" "Muslin_18X20_白细布(粗糙度18X20)"
call :RenameAction "Muslin_22X22" "Muslin_22X22_白细布(粗糙度22X22)"
call :RenameAction "Muslin_28X36" "Muslin_28X36_白细布(标准28X36)"
call :RenameAction "Muslin_32X38" "Muslin_32X38_白细布(精细32X38)"
call :RenameAction "Nylon_Canvas" "Nylon_Canvas_尼龙帆布"
call :RenameAction "Nylon_Featherweight" "Nylon_Featherweight_超薄尼龙"
call :RenameAction "Nylon_Matte" "Nylon_Matte_哑光尼龙"
call :RenameAction "Polyester_Taffeta" "Polyester_Taffeta_涤丝塔夫绸"
call :RenameAction "Rib_1X1_319gsm" "Rib_1X1_319gsm_1X1罗纹(319克)"
call :RenameAction "Rib_1X1_486gsm" "Rib_1X1_486gsm_1X1罗纹(486克)"
call :RenameAction "Rib_2X2_468gsm" "Rib_2X2_468gsm_2X2罗纹(468克)"
call :RenameAction "Sherpa_Cuddle_Fleece_Poly_230gsm" "Sherpa_Cuddle_Fleece_Poly_230gsm_230克涤纶超柔绒"
call :RenameAction "Sherpa_Faux_Sheepskin_Fleece_Poly_230gsm" "Sherpa_Faux_Sheepskin_Fleece_Poly_230gsm_230克涤纶仿羊羔绒"
call :RenameAction "Sherpa_Fleece_160gsm" "Sherpa_Fleece_160gsm_160克摇粒绒"
call :RenameAction "Sherpa_Fleece_272gsm" "Sherpa_Fleece_272gsm_272克摇粒绒"
call :RenameAction "Sherpa_Fleece_Poly_240gsm" "Sherpa_Fleece_Poly_240gsm_240克涤纶摇粒绒"
call :RenameAction "Sherpa_Fleece_Poly_265gsm" "Sherpa_Fleece_Poly_265gsm_265克涤纶摇粒绒"
call :RenameAction "Sherpa_Fleece_Poly_270gsm" "Sherpa_Fleece_Poly_270gsm_270克涤纶摇粒绒"
call :RenameAction "Sherpa_Fleece_Poly_275gsm" "Sherpa_Fleece_Poly_275gsm_275克涤纶摇粒绒"
call :RenameAction "Sherpa_Fleece_Poly_300gsm" "Sherpa_Fleece_Poly_300gsm_300克涤纶摇粒绒"
call :RenameAction "Sherpa_Polar_Fleece_Poly_260gsm" "Sherpa_Polar_Fleece_Poly_260gsm_260克涤纶极地绒"
call :RenameAction "Sherpa_Shearling_Curly_Fleece_Poly_360gsm" "Sherpa_Shearling_Curly_Fleece_Poly_360gsm_360克卷毛羊羔绒"
call :RenameAction "Silk_Charmeuse" "Silk_Charmeuse_真丝素绉缎"
call :RenameAction "Silk_Chiffon" "Silk_Chiffon_真丝雪纺"
call :RenameAction "Silk_Crepede_Chine" "Silk_Crepede_Chine_真丝双绉"
call :RenameAction "Silk_Double_Georgette" "Silk_Double_Georgette_双乔其纱"
call :RenameAction "Silk_Duchess_Satin" "Silk_Duchess_Satin_公爵夫人缎(厚缎)"
call :RenameAction "Silk_Faille" "Silk_Faille_法兰缎(横棱缎)"
call :RenameAction "Silk_Knit_Jersey" "Silk_Knit_Jersey_真丝针织汗布"
call :RenameAction "Silk_Organza" "Silk_Organza_欧根纱"
call :RenameAction "Silk_Taffeta" "Silk_Taffeta_真丝塔夫绸"
call :RenameAction "Trim_Full_Grain_Leather" "Trim_Full_Grain_Leather_头层牛皮辅料"
call :RenameAction "Trim_Fusible_Rigid" "Trim_Fusible_Rigid_硬质粘合衬"
call :RenameAction "Trim_Hardware" "Trim_Hardware_五金件(金属)"
call :RenameAction "Wool" "Wool_羊毛"
call :RenameAction "Wool_Cashmere" "Wool_Cashmere_羊绒"
goto END

:MODE_B
echo 正在恢复：纯英语 模式...
:: 这里将双语文件名还原为纯英文
call :RenameAction "Wool_Melton_麦尔登呢" "Wool_Melton"
call :RenameAction "(Default_for_Simulation)_默认模拟" "(Default_for_Simulation)"
call :RenameAction "(Default_v5.2)_默认v5.2" "(Default_v5.2)"
call :RenameAction "Cotton_14_Wale_Corduroy_棉14条灯芯绒" "Cotton_14_Wale_Corduroy"
call :RenameAction "Cotton_40s_Chambray_40支棉平纹府绸(青年布)" "Cotton_40s_Chambray"
call :RenameAction "Cotton_40s_Poplin_40支棉府绸" "Cotton_40s_Poplin"
call :RenameAction "Cotton_40s_Stretch_Poplin_40支弹力棉府绸" "Cotton_40s_Stretch_Poplin"
call :RenameAction "Cotton_50s_Poplin_50支棉府绸" "Cotton_50s_Poplin"
call :RenameAction "Cotton_Canvas_棉帆布" "Cotton_Canvas"
call :RenameAction "Cotton_Gabardine_棉华达呢" "Cotton_Gabardine"
call :RenameAction "Cotton_Heavy_Canvas_重磅棉帆布" "Cotton_Heavy_Canvas"
call :RenameAction "Cotton_Heavy_Twill_重磅棉斜纹" "Cotton_Heavy_Twill"
call :RenameAction "Cotton_Oxford_牛津布" "Cotton_Oxford"
call :RenameAction "Cotton_Plush_棉长毛绒" "Cotton_Plush"
call :RenameAction "Cotton_Sateen_棉缎面" "Cotton_Sateen"
call :RenameAction "Cotton_Stretch_Sateen_棉弹力缎面" "Cotton_Stretch_Sateen"
call :RenameAction "Cotton_Stretch_Velvet_棉弹力天鹅绒" "Cotton_Stretch_Velvet"
call :RenameAction "Cotton_Terry_Cloth_棉毛圈布" "Cotton_Terry_Cloth"
call :RenameAction "Cotton_Twill_棉斜纹" "Cotton_Twill"
call :RenameAction "Cotton_Voile_棉巴厘纱(轻薄平纹布)" "Cotton_Voile"
call :RenameAction "Denim_Lightweight_轻质牛仔布" "Denim_Lightweight"
call :RenameAction "Denim_Raw_原色牛仔布" "Denim_Raw"
call :RenameAction "Denim_Stretch_弹力牛仔布" "Denim_Stretch"
call :RenameAction "Fur_Angora_安哥拉兔毛" "Fur_Angora"
call :RenameAction "Fur_Fox_狐狸毛" "Fur_Fox"
call :RenameAction "Fur_Luxe_Cuddle_高档超柔拉舍尔毛绒" "Fur_Luxe_Cuddle"
call :RenameAction "Fur_Mink_Skin_貂皮" "Fur_Mink_Skin"
call :RenameAction "Fur_Mohair_马海毛" "Fur_Mohair"
call :RenameAction "Fur_Muskrat_Belly_麝鼠腹皮" "Fur_Muskrat_Belly"
call :RenameAction "Fur_Rabbit_兔毛" "Fur_Rabbit"
call :RenameAction "Interlining_Acetate_Lining_醋酸纤维里布" "Interlining_Acetate_Lining"
call :RenameAction "Interlining_Polyester_Satin_Lining_涤纶色丁里布" "Interlining_Polyester_Satin_Lining"
call :RenameAction "Knit_Cotton_Jersey_全棉单面针织汗布" "Knit_Cotton_Jersey"
call :RenameAction "Knit_Cotton_Rayon Jersey_棉粘胶混纺汗布" "Knit_Cotton_Rayon Jersey"
call :RenameAction "Knit_Fleece_Terry_抓绒毛圈布" "Knit_Fleece_Terry"
call :RenameAction "Knit_Pique_Jersey_珠地网眼针织布" "Knit_Pique_Jersey"
call :RenameAction "Knit_Ponte_Jersey_罗马布(双面针织)" "Knit_Ponte_Jersey"
call :RenameAction "Knit_Terry_针织毛圈布" "Knit_Terry"
call :RenameAction "Leather_Lambskin_羔羊皮" "Leather_Lambskin"
call :RenameAction "Linen_亚麻" "Linen"
call :RenameAction "Muslin_18X20_白细布(粗糙度18X20)" "Muslin_18X20"
call :RenameAction "Muslin_22X22_白细布(粗糙度22X22)" "Muslin_22X22"
call :RenameAction "Muslin_28X36_白细布(标准28X36)" "Muslin_28X36"
call :RenameAction "Muslin_32X38_白细布(精细32X38)" "Muslin_32X38"
call :RenameAction "Nylon_Canvas_尼龙帆布" "Nylon_Canvas"
call :RenameAction "Nylon_Featherweight_超薄尼龙" "Nylon_Featherweight"
call :RenameAction "Nylon_Matte_哑光尼龙" "Nylon_Matte"
call :RenameAction "Polyester_Taffeta_涤丝塔夫绸" "Polyester_Taffeta"
call :RenameAction "Rib_1X1_319gsm_1X1罗纹(319克)" "Rib_1X1_319gsm"
call :RenameAction "Rib_1X1_486gsm_1X1罗纹(486克)" "Rib_1X1_486gsm"
call :RenameAction "Rib_2X2_468gsm_2X2罗纹(468克)" "Rib_2X2_468gsm"
call :RenameAction "Sherpa_Cuddle_Fleece_Poly_230gsm_230克涤纶超柔绒" "Sherpa_Cuddle_Fleece_Poly_230gsm"
call :RenameAction "Sherpa_Faux_Sheepskin_Fleece_Poly_230gsm_230克涤纶仿羊羔绒" "Sherpa_Faux_Sheepskin_Fleece_Poly_230gsm"
call :RenameAction "Sherpa_Fleece_160gsm_160克摇粒绒" "Sherpa_Fleece_160gsm"
call :RenameAction "Sherpa_Fleece_272gsm_272克摇粒绒" "Sherpa_Fleece_272gsm"
call :RenameAction "Sherpa_Fleece_Poly_240gsm_240克涤纶摇粒绒" "Sherpa_Fleece_Poly_240gsm"
call :RenameAction "Sherpa_Fleece_Poly_265gsm_265克涤纶摇粒绒" "Sherpa_Fleece_Poly_265gsm"
call :RenameAction "Sherpa_Fleece_Poly_270gsm_270克涤纶摇粒绒" "Sherpa_Fleece_Poly_270gsm"
call :RenameAction "Sherpa_Fleece_Poly_275gsm_275克涤纶摇粒绒" "Sherpa_Fleece_Poly_275gsm"
call :RenameAction "Sherpa_Fleece_Poly_300gsm_300克涤纶摇粒绒" "Sherpa_Fleece_Poly_300gsm"
call :RenameAction "Sherpa_Polar_Fleece_Poly_260gsm_260克涤纶极地绒" "Sherpa_Polar_Fleece_Poly_260gsm"
call :RenameAction "Sherpa_Shearling_Curly_Fleece_Poly_360gsm_360克卷毛羊羔绒" "Sherpa_Shearling_Curly_Fleece_Poly_360gsm"
call :RenameAction "Silk_Charmeuse_真丝素绉缎" "Silk_Charmeuse"
call :RenameAction "Silk_Chiffon_真丝雪纺" "Silk_Chiffon"
call :RenameAction "Silk_Crepede_Chine_真丝双绉" "Silk_Crepede_Chine"
call :RenameAction "Silk_Double_Georgette_双乔其纱" "Silk_Double_Georgette"
call :RenameAction "Silk_Duchess_Satin_公爵夫人缎(厚缎)" "Silk_Duchess_Satin"
call :RenameAction "Silk_Faille_法兰缎(横棱缎)" "Silk_Faille"
call :RenameAction "Silk_Knit_Jersey_真丝针织汗布" "Silk_Knit_Jersey"
call :RenameAction "Silk_Organza_欧根纱" "Silk_Organza"
call :RenameAction "Silk_Taffeta_真丝塔夫绸" "Silk_Taffeta"
call :RenameAction "Trim_Full_Grain_Leather_头层牛皮辅料" "Trim_Full_Grain_Leather"
call :RenameAction "Trim_Fusible_Rigid_硬质粘合衬" "Trim_Fusible_Rigid"
call :RenameAction "Trim_Hardware_五金件(金属)" "Trim_Hardware"
call :RenameAction "Wool_羊毛" "Wool"
call :RenameAction "Wool_Cashmere_羊绒" "Wool_Cashmere"
goto END

:: 通用重命名逻辑：如果存在目标文件，则执行
:RenameAction
if exist "%~1.zfab" (
    ren "%~1.zfab" "%~2.zfab"
)
goto :eof

:END
echo ---------------------------------------
echo 处理完成！
pause