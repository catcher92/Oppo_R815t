.class Lcom/android/server/ServerThread$3;
.super Ljava/lang/Object;
.source "SystemServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ServerThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ServerThread;

.field final synthetic val$appWidgetF:Lcom/android/server/AppWidgetService;

.field final synthetic val$batteryF:Lcom/android/server/BatteryService;

.field final synthetic val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

.field final synthetic val$connectivityF:Lcom/android/server/ConnectivityService;

.field final synthetic val$contextF:Landroid/content/Context;

.field final synthetic val$countryDetectorF:Lcom/android/server/CountryDetectorService;

.field final synthetic val$dockF:Lcom/android/server/DockObserver;

.field final synthetic val$dreamyF:Lcom/android/server/dreams/DreamManagerService;

.field final synthetic val$headless:Z

.field final synthetic val$immF:Lcom/android/server/InputMethodManagerService;

.field final synthetic val$inputManagerF:Lcom/android/server/input/InputManagerService;

.field final synthetic val$locationF:Lcom/android/server/LocationManagerService;

.field final synthetic val$mountServiceF:Lcom/android/server/MountService;

.field final synthetic val$networkManagementF:Lcom/android/server/NetworkManagementService;

.field final synthetic val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

.field final synthetic val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

.field final synthetic val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

.field final synthetic val$recognitionF:Lcom/android/server/RecognitionManagerService;

.field final synthetic val$safeMode:Z

.field final synthetic val$statusBarF:Lcom/android/server/StatusBarManagerService;

.field final synthetic val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

.field final synthetic val$telephonyRegistryF2:Lcom/android/server/TelephonyRegistry;

.field final synthetic val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

.field final synthetic val$thermalF:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

.field final synthetic val$throttleF:Lcom/android/server/ThrottleService;

.field final synthetic val$twilightF:Lcom/android/server/TwilightService;

.field final synthetic val$uiModeF:Lcom/android/server/UiModeManagerService;

.field final synthetic val$usbF:Lcom/android/server/usb/UsbService;

.field final synthetic val$wallpaperF:Lcom/android/server/WallpaperManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/ServerThread;ZLandroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/TwilightService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/ThrottleService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/TelephonyRegistry;Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1166
    iput-object p1, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    iput-boolean p2, p0, Lcom/android/server/ServerThread$3;->val$headless:Z

    iput-object p3, p0, Lcom/android/server/ServerThread$3;->val$contextF:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/server/ServerThread$3;->val$mountServiceF:Lcom/android/server/MountService;

    iput-object p5, p0, Lcom/android/server/ServerThread$3;->val$batteryF:Lcom/android/server/BatteryService;

    iput-object p6, p0, Lcom/android/server/ServerThread$3;->val$networkManagementF:Lcom/android/server/NetworkManagementService;

    iput-object p7, p0, Lcom/android/server/ServerThread$3;->val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    iput-object p8, p0, Lcom/android/server/ServerThread$3;->val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    iput-object p9, p0, Lcom/android/server/ServerThread$3;->val$connectivityF:Lcom/android/server/ConnectivityService;

    iput-object p10, p0, Lcom/android/server/ServerThread$3;->val$dockF:Lcom/android/server/DockObserver;

    iput-object p11, p0, Lcom/android/server/ServerThread$3;->val$usbF:Lcom/android/server/usb/UsbService;

    iput-object p12, p0, Lcom/android/server/ServerThread$3;->val$twilightF:Lcom/android/server/TwilightService;

    iput-object p13, p0, Lcom/android/server/ServerThread$3;->val$uiModeF:Lcom/android/server/UiModeManagerService;

    iput-object p14, p0, Lcom/android/server/ServerThread$3;->val$recognitionF:Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/server/ServerThread$3;->val$appWidgetF:Lcom/android/server/AppWidgetService;

    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/android/server/ServerThread$3;->val$safeMode:Z

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/server/ServerThread$3;->val$wallpaperF:Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/android/server/ServerThread$3;->val$immF:Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/server/ServerThread$3;->val$statusBarF:Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/android/server/ServerThread$3;->val$locationF:Lcom/android/server/LocationManagerService;

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/android/server/ServerThread$3;->val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/android/server/ServerThread$3;->val$throttleF:Lcom/android/server/ThrottleService;

    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/android/server/ServerThread$3;->val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/android/server/ServerThread$3;->val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/android/server/ServerThread$3;->val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/android/server/ServerThread$3;->val$dreamyF:Lcom/android/server/dreams/DreamManagerService;

    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/android/server/ServerThread$3;->val$inputManagerF:Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/android/server/ServerThread$3;->val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/android/server/ServerThread$3;->val$telephonyRegistryF2:Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/android/server/ServerThread$3;->val$thermalF:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1168
    const-string v3, "SystemServer"

    const-string v4, "Making services ready"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    const-string v3, "ro.product.name"

    const-string v4, "oppo"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1172
    .local v1, productNameProject:Ljava/lang/String;
    const-string v3, "OPPO89T_12083"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1173
    iget-object v3, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    iget-object v3, v3, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "oppo_screan_color_define"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1175
    .local v2, valueset:I
    :try_start_0
    invoke-static {v2}, Lcom/oppo/tpreset/tpreset;->oppo_lcd_display_change(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1182
    .end local v2           #valueset:I
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/ServerThread$3;->val$headless:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/ServerThread$3;->val$contextF:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/ServerThread;->startSystemUi(Landroid/content/Context;)V

    .line 1184
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/ServerThread$3;->val$mountServiceF:Lcom/android/server/MountService;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/ServerThread$3;->val$mountServiceF:Lcom/android/server/MountService;

    invoke-virtual {v3}, Lcom/android/server/MountService;->systemReady()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1189
    :cond_2
    :goto_1
    :try_start_2
    iget-object v3, p0, Lcom/android/server/ServerThread$3;->val$batteryF:Lcom/android/server/BatteryService;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/ServerThread$3;->val$batteryF:Lcom/android/server/BatteryService;

    invoke-virtual {v3}, Lcom/android/server/BatteryService;->systemReady()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 1194
    :cond_3
    :goto_2
    :try_start_3
    iget-object v3, p0, Lcom/android/server/ServerThread$3;->val$networkManagementF:Lcom/android/server/NetworkManagementService;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/ServerThread$3;->val$networkManagementF:Lcom/android/server/NetworkManagementService;

    invoke-virtual {v3}, Lcom/android/server/NetworkManagementService;->systemReady()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 1199
    :cond_4
    :goto_3
    :try_start_4
    iget-object v3, p0, Lcom/android/server/ServerThread$3;->val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/ServerThread$3;->val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    invoke-virtual {v3}, Lcom/android/server/net/NetworkStatsService;->systemReady()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    .line 1204
    :cond_5
    :goto_4
    :try_start_5
    iget-object v3, p0, Lcom/android/server/ServerThread$3;->val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/ServerThread$3;->val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->systemReady()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    .line 1209
    :cond_6
    :goto_5
    :try_start_6
    iget-object v3, p0, Lcom/android/server/ServerThread$3;->val$connectivityF:Lcom/android/server/ConnectivityService;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/server/ServerThread$3;->val$connectivityF:Lcom/android/server/ConnectivityService;

    invoke-virtual {v3}, Lcom/android/server/ConnectivityService;->systemReady()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    .line 1214
    :cond_7
    :goto_6
    :try_start_7
    iget-object v3, p0, Lcom/android/server/ServerThread$3;->val$dockF:Lcom/android/server/DockObserver;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/server/ServerThread$3;->val$dockF:Lcom/android/server/DockObserver;

    invoke-virtual {v3}, Lcom/android/server/DockObserver;->systemReady()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7

    .line 1219
    :cond_8
    :goto_7
    :try_start_8
    iget-object v3, p0, Lcom/android/server/ServerThread$3;->val$usbF:Lcom/android/server/usb/UsbService;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/server/ServerThread$3;->val$usbF:Lcom/android/server/usb/UsbService;

    invoke-virtual {v3}, Lcom/android/server/usb/UsbService;->systemReady()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_8

    .line 1224
    :cond_9
    :goto_8
    :try_start_9
    iget-object v3, p0, Lcom/android/server/ServerThread$3;->val$twilightF:Lcom/android/server/TwilightService;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/server/ServerThread$3;->val$twilightF:Lcom/android/server/TwilightService;

    invoke-virtual {v3}, Lcom/android/server/TwilightService;->systemReady()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_9

    .line 1229
    :cond_a
    :goto_9
    :try_start_a
    iget-object v3, p0, Lcom/android/server/ServerThread$3;->val$uiModeF:Lcom/android/server/UiModeManagerService;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/server/ServerThread$3;->val$uiModeF:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v3}, Lcom/android/server/UiModeManagerService;->systemReady()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_a

    .line 1234
    :cond_b
    :goto_a
    :try_start_b
    iget-object v3, p0, Lcom/android/server/ServerThread$3;->val$recognitionF:Lcom/android/server/RecognitionManagerService;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/server/ServerThread$3;->val$recognitionF:Lcom/android/server/RecognitionManagerService;

    invoke-virtual {v3}, Lcom/android/server/RecognitionManagerService;->systemReady()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_b

    .line 1238
    :cond_c
    :goto_b
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/Watchdog;->start()V

    .line 1244
    :try_start_c
    iget-object v3, p0, Lcom/android/server/ServerThread$3;->val$appWidgetF:Lcom/android/server/AppWidgetService;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/server/ServerThread$3;->val$appWidgetF:Lcom/android/server/AppWidgetService;

    iget-boolean v4, p0, Lcom/android/server/ServerThread$3;->val$safeMode:Z

    invoke-virtual {v3, v4}, Lcom/android/server/AppWidgetService;->systemReady(Z)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_c

    .line 1249
    :cond_d
    :goto_c
    :try_start_d
    iget-object v3, p0, Lcom/android/server/ServerThread$3;->val$wallpaperF:Lcom/android/server/WallpaperManagerService;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/android/server/ServerThread$3;->val$wallpaperF:Lcom/android/server/WallpaperManagerService;

    invoke-virtual {v3}, Lcom/android/server/WallpaperManagerService;->systemReady()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_d

    .line 1254
    :cond_e
    :goto_d
    :try_start_e
    iget-object v3, p0, Lcom/android/server/ServerThread$3;->val$immF:Lcom/android/server/InputMethodManagerService;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/android/server/ServerThread$3;->val$immF:Lcom/android/server/InputMethodManagerService;

    iget-object v4, p0, Lcom/android/server/ServerThread$3;->val$statusBarF:Lcom/android/server/StatusBarManagerService;

    invoke-virtual {v3, v4}, Lcom/android/server/InputMethodManagerService;->systemReady(Lcom/android/server/StatusBarManagerService;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_e

    .line 1259
    :cond_f
    :goto_e
    :try_start_f
    iget-object v3, p0, Lcom/android/server/ServerThread$3;->val$locationF:Lcom/android/server/LocationManagerService;

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/android/server/ServerThread$3;->val$locationF:Lcom/android/server/LocationManagerService;

    invoke-virtual {v3}, Lcom/android/server/LocationManagerService;->systemReady()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_f

    .line 1264
    :cond_10
    :goto_f
    :try_start_10
    iget-object v3, p0, Lcom/android/server/ServerThread$3;->val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/android/server/ServerThread$3;->val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    invoke-virtual {v3}, Lcom/android/server/CountryDetectorService;->systemReady()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_10

    .line 1269
    :cond_11
    :goto_10
    :try_start_11
    iget-object v3, p0, Lcom/android/server/ServerThread$3;->val$throttleF:Lcom/android/server/ThrottleService;

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/android/server/ServerThread$3;->val$throttleF:Lcom/android/server/ThrottleService;

    invoke-virtual {v3}, Lcom/android/server/ThrottleService;->systemReady()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_11

    .line 1274
    :cond_12
    :goto_11
    :try_start_12
    iget-object v3, p0, Lcom/android/server/ServerThread$3;->val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/android/server/ServerThread$3;->val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual {v3}, Lcom/android/server/NetworkTimeUpdateService;->systemReady()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_12

    .line 1279
    :cond_13
    :goto_12
    :try_start_13
    iget-object v3, p0, Lcom/android/server/ServerThread$3;->val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/android/server/ServerThread$3;->val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

    invoke-virtual {v3}, Lcom/android/server/CommonTimeManagementService;->systemReady()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_13

    .line 1284
    :cond_14
    :goto_13
    :try_start_14
    iget-object v3, p0, Lcom/android/server/ServerThread$3;->val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/android/server/ServerThread$3;->val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

    invoke-virtual {v3}, Lcom/android/server/TextServicesManagerService;->systemReady()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_14

    .line 1289
    :cond_15
    :goto_14
    :try_start_15
    iget-object v3, p0, Lcom/android/server/ServerThread$3;->val$dreamyF:Lcom/android/server/dreams/DreamManagerService;

    if-eqz v3, :cond_16

    iget-object v3, p0, Lcom/android/server/ServerThread$3;->val$dreamyF:Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v3}, Lcom/android/server/dreams/DreamManagerService;->systemReady()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_15

    .line 1295
    :cond_16
    :goto_15
    :try_start_16
    iget-object v3, p0, Lcom/android/server/ServerThread$3;->val$inputManagerF:Lcom/android/server/input/InputManagerService;

    if-eqz v3, :cond_17

    iget-object v3, p0, Lcom/android/server/ServerThread$3;->val$inputManagerF:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v3}, Lcom/android/server/input/InputManagerService;->systemReady()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_16

    .line 1300
    :cond_17
    :goto_16
    :try_start_17
    iget-object v3, p0, Lcom/android/server/ServerThread$3;->val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

    if-eqz v3, :cond_18

    iget-object v3, p0, Lcom/android/server/ServerThread$3;->val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

    invoke-virtual {v3}, Lcom/android/server/TelephonyRegistry;->systemReady()V

    .line 1302
    :cond_18
    iget-object v3, p0, Lcom/android/server/ServerThread$3;->val$telephonyRegistryF2:Lcom/android/server/TelephonyRegistry;

    if-eqz v3, :cond_19

    iget-object v3, p0, Lcom/android/server/ServerThread$3;->val$telephonyRegistryF2:Lcom/android/server/TelephonyRegistry;

    invoke-virtual {v3}, Lcom/android/server/TelephonyRegistry;->systemReady()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_17

    .line 1316
    :cond_19
    :goto_17
    return-void

    .line 1176
    .restart local v2       #valueset:I
    :catch_0
    move-exception v0

    .line 1177
    .local v0, e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v4, "oppo lcd display change error!"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1185
    .end local v0           #e:Ljava/lang/Throwable;
    .end local v2           #valueset:I
    :catch_1
    move-exception v0

    .line 1186
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v4, "making Mount Service ready"

    invoke-virtual {v3, v4, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 1190
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_2
    move-exception v0

    .line 1191
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v4, "making Battery Service ready"

    invoke-virtual {v3, v4, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 1195
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_3
    move-exception v0

    .line 1196
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v4, "making Network Managment Service ready"

    invoke-virtual {v3, v4, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 1200
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_4
    move-exception v0

    .line 1201
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v4, "making Network Stats Service ready"

    invoke-virtual {v3, v4, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 1205
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_5
    move-exception v0

    .line 1206
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v4, "making Network Policy Service ready"

    invoke-virtual {v3, v4, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 1210
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_6
    move-exception v0

    .line 1211
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v4, "making Connectivity Service ready"

    invoke-virtual {v3, v4, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 1215
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_7
    move-exception v0

    .line 1216
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v4, "making Dock Service ready"

    invoke-virtual {v3, v4, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 1220
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_8
    move-exception v0

    .line 1221
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v4, "making USB Service ready"

    invoke-virtual {v3, v4, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 1225
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_9
    move-exception v0

    .line 1226
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v4, "makin Twilight Service ready"

    invoke-virtual {v3, v4, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 1230
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_a
    move-exception v0

    .line 1231
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v4, "making UI Mode Service ready"

    invoke-virtual {v3, v4, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 1235
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_b
    move-exception v0

    .line 1236
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v4, "making Recognition Service ready"

    invoke-virtual {v3, v4, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 1245
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_c
    move-exception v0

    .line 1246
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v4, "making App Widget Service ready"

    invoke-virtual {v3, v4, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 1250
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_d
    move-exception v0

    .line 1251
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v4, "making Wallpaper Service ready"

    invoke-virtual {v3, v4, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 1255
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_e
    move-exception v0

    .line 1256
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v4, "making Input Method Service ready"

    invoke-virtual {v3, v4, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 1260
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_f
    move-exception v0

    .line 1261
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v4, "making Location Service ready"

    invoke-virtual {v3, v4, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 1265
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_10
    move-exception v0

    .line 1266
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v4, "making Country Detector Service ready"

    invoke-virtual {v3, v4, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 1270
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_11
    move-exception v0

    .line 1271
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v4, "making Throttle Service ready"

    invoke-virtual {v3, v4, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 1275
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_12
    move-exception v0

    .line 1276
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v4, "making Network Time Service ready"

    invoke-virtual {v3, v4, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 1280
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_13
    move-exception v0

    .line 1281
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v4, "making Common time management service ready"

    invoke-virtual {v3, v4, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 1285
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_14
    move-exception v0

    .line 1286
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v4, "making Text Services Manager Service ready"

    invoke-virtual {v3, v4, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 1290
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_15
    move-exception v0

    .line 1291
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v4, "making DreamManagerService ready"

    invoke-virtual {v3, v4, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 1296
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_16
    move-exception v0

    .line 1297
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v4, "making InputManagerService ready"

    invoke-virtual {v3, v4, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 1303
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_17
    move-exception v0

    .line 1304
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v4, "making TelephonyRegistry ready"

    invoke-virtual {v3, v4, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17
.end method
