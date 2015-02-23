.class Lcom/android/server/am/OppoSecureProtectUtils;
.super Ljava/lang/Object;
.source "OppoSecureProtectUtils.java"


# static fields
.field private static final MONKEY_CONTROLLER:I = 0x1

.field private static final NO_CONTROLLER:I = 0x0

.field private static final SECURE_CONTROLLER:I = 0x2

.field private static final TAG:Ljava/lang/String; = "OppoSecureProtectUtils"

.field private static mControllerType:I


# instance fields
.field private mRequestCodeTemp:I

.field private mResultToTemp:Lcom/android/server/am/ActivityRecord;

.field private mResultWhoTemp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput v0, Lcom/android/server/am/OppoSecureProtectUtils;->mControllerType:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final isMonkeyController(Lcom/android/server/am/ActivityManagerService;)Z
    .locals 3
    .parameter "ams"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 72
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    if-nez v2, :cond_0

    .line 75
    :goto_0
    return v1

    :cond_0
    sget v2, Lcom/android/server/am/OppoSecureProtectUtils;->mControllerType:I

    if-ne v2, v0, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method static final setControllerLocked(Lcom/android/server/am/ActivityManagerService;Landroid/app/IActivityController;I)V
    .locals 3
    .parameter "ams"
    .parameter "controller"
    .parameter "type"

    .prologue
    .line 65
    const-string v0, "OppoSecureProtectUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Controller type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    .line 68
    sput p2, Lcom/android/server/am/OppoSecureProtectUtils;->mControllerType:I

    .line 69
    return-void
.end method

.method static final setMonkeyControllerLocked(Lcom/android/server/am/ActivityManagerService;Landroid/app/IActivityController;)V
    .locals 1
    .parameter "ams"
    .parameter "controller"

    .prologue
    .line 58
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 59
    .local v0, type:I
    :goto_0
    invoke-static {p0, p1, v0}, Lcom/android/server/am/OppoSecureProtectUtils;->setControllerLocked(Lcom/android/server/am/ActivityManagerService;Landroid/app/IActivityController;I)V

    .line 60
    return-void

    .line 58
    .end local v0           #type:I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static final setSecureControllerLocked(Lcom/android/server/am/ActivityManagerService;Landroid/app/IActivityController;)V
    .locals 1
    .parameter "ams"
    .parameter "controller"

    .prologue
    .line 52
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 53
    .local v0, type:I
    :goto_0
    invoke-static {p0, p1, v0}, Lcom/android/server/am/OppoSecureProtectUtils;->setControllerLocked(Lcom/android/server/am/ActivityManagerService;Landroid/app/IActivityController;I)V

    .line 54
    return-void

    .line 52
    .end local v0           #type:I
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method


# virtual methods
.method handleFinishActivityLocked(Lcom/android/server/am/ActivityStack;)V
    .locals 7
    .parameter "stack"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/server/am/OppoSecureProtectUtils;->mResultToTemp:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_0

    .line 118
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/server/am/OppoSecureProtectUtils;->mResultToTemp:Lcom/android/server/am/ActivityRecord;

    iget-object v3, p0, Lcom/android/server/am/OppoSecureProtectUtils;->mResultWhoTemp:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/am/OppoSecureProtectUtils;->mRequestCodeTemp:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 121
    :cond_0
    return-void
.end method

.method handleStartActivityLocked(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ProcessRecord;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IZ)Lcom/android/server/am/ActivityRecord;
    .locals 13
    .parameter "service"
    .parameter "stack"
    .parameter "caller"
    .parameter "launchedFromUid"
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "aInfo"
    .parameter "resultTo"
    .parameter "resultWho"
    .parameter "reqCode"
    .parameter "componentSpecified"

    .prologue
    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, r:Lcom/android/server/am/ActivityRecord;
    iget-object v1, p0, Lcom/android/server/am/OppoSecureProtectUtils;->mResultToTemp:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_0

    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_0

    .line 97
    new-instance v0, Lcom/android/server/am/ActivityRecord;

    .end local v0           #r:Lcom/android/server/am/ActivityRecord;
    iget-object v8, p1, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v9, p0, Lcom/android/server/am/OppoSecureProtectUtils;->mResultToTemp:Lcom/android/server/am/ActivityRecord;

    iget-object v10, p0, Lcom/android/server/am/OppoSecureProtectUtils;->mResultWhoTemp:Ljava/lang/String;

    iget v11, p0, Lcom/android/server/am/OppoSecureProtectUtils;->mRequestCodeTemp:I

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lcom/android/server/am/ActivityRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ProcessRecord;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IZ)V

    .line 101
    .restart local v0       #r:Lcom/android/server/am/ActivityRecord;
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/am/OppoSecureProtectUtils;->setTempValue(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V

    .line 110
    :goto_0
    return-object v0

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/OppoSecureProtectUtils;->mResultToTemp:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_1

    .line 104
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/am/OppoSecureProtectUtils;->setTempValue(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V

    .line 106
    :cond_1
    new-instance v0, Lcom/android/server/am/ActivityRecord;

    .end local v0           #r:Lcom/android/server/am/ActivityRecord;
    iget-object v8, p1, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lcom/android/server/am/ActivityRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ProcessRecord;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IZ)V

    .restart local v0       #r:Lcom/android/server/am/ActivityRecord;
    goto :goto_0
.end method

.method setTempValue(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V
    .locals 0
    .parameter "resultToTemp"
    .parameter "resultWhoTemp"
    .parameter "requestCodeTemp"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/server/am/OppoSecureProtectUtils;->mResultToTemp:Lcom/android/server/am/ActivityRecord;

    .line 83
    iput-object p2, p0, Lcom/android/server/am/OppoSecureProtectUtils;->mResultWhoTemp:Ljava/lang/String;

    .line 84
    iput p3, p0, Lcom/android/server/am/OppoSecureProtectUtils;->mRequestCodeTemp:I

    .line 85
    return-void
.end method
