.class public Lcom/oppo/server/PermissionSelectionActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "PermissionSelectionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field static final APP_PKG_NAME:Ljava/lang/String; = "pkg"

.field static final MODIFY_ACTION:Ljava/lang/String; = "android.intent.action.OPPO_MODIFY_PKG_PERMISSIONS"

.field static final MODIFY_PERMISSION_PACKAGE_NAME:Ljava/lang/String; = "MODIFY_PERMISSION_PACKAGE_NAME"

.field private static final TAG:Ljava/lang/String; = "PermissionSelectionActivity"


# instance fields
.field private am:Landroid/app/ActivityManager;

.field private mAppInfo:Landroid/content/pm/ApplicationInfo;

.field private mContext:Landroid/content/Context;

.field private mPackageName:Ljava/lang/String;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 64
    iput-object v0, p0, Lcom/oppo/server/PermissionSelectionActivity;->mContext:Landroid/content/Context;

    .line 65
    iput-object v0, p0, Lcom/oppo/server/PermissionSelectionActivity;->mResources:Landroid/content/res/Resources;

    .line 66
    iput-object v0, p0, Lcom/oppo/server/PermissionSelectionActivity;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method private initAppInfo(Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"

    .prologue
    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/oppo/server/PermissionSelectionActivity;->mPm:Landroid/content/pm/PackageManager;

    const/16 v2, 0x2000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/server/PermissionSelectionActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    const/4 v1, 0x1

    .line 85
    :goto_0
    return v1

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "PermissionSelectionActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception when retrieving package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 124
    packed-switch p2, :pswitch_data_0

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 127
    :pswitch_0
    const-string v1, "PermissionSelectionActivity"

    const-string v2, "BUTTON_POSITIVE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const-string v1, "oppo.permissions.disable"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPPO_MODIFY_PKG_PERMISSIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 132
    .local v0, modifyIntent:Landroid/content/Intent;
    const-string v1, "pkg"

    iget-object v2, p0, Lcom/oppo/server/PermissionSelectionActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    iget-object v1, p0, Lcom/oppo/server/PermissionSelectionActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 140
    .end local v0           #modifyIntent:Landroid/content/Intent;
    :pswitch_1
    iget-object v1, p0, Lcom/oppo/server/PermissionSelectionActivity;->am:Landroid/app/ActivityManager;

    if-eqz v1, :cond_0

    .line 141
    const-string v1, "PermissionSelectionActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BUTTON_NEGATIVE :forceStopPackage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/server/PermissionSelectionActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v1, p0, Lcom/oppo/server/PermissionSelectionActivity;->am:Landroid/app/ActivityManager;

    iget-object v2, p0, Lcom/oppo/server/PermissionSelectionActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    iput-object p0, p0, Lcom/oppo/server/PermissionSelectionActivity;->mContext:Landroid/content/Context;

    .line 94
    iget-object v1, p0, Lcom/oppo/server/PermissionSelectionActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/server/PermissionSelectionActivity;->mResources:Landroid/content/res/Resources;

    .line 95
    invoke-virtual {p0}, Lcom/oppo/server/PermissionSelectionActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/server/PermissionSelectionActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 97
    invoke-virtual {p0}, Lcom/oppo/server/PermissionSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "MODIFY_PERMISSION_PACKAGE_NAME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/server/PermissionSelectionActivity;->mPackageName:Ljava/lang/String;

    .line 98
    iget-object v1, p0, Lcom/oppo/server/PermissionSelectionActivity;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/oppo/server/PermissionSelectionActivity;->initAppInfo(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/oppo/server/PermissionSelectionActivity;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/oppo/server/PermissionSelectionActivity;->am:Landroid/app/ActivityManager;

    .line 108
    iget-object v0, p0, Lcom/oppo/server/PermissionSelectionActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 109
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x108009b

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 110
    iget-object v1, p0, Lcom/oppo/server/PermissionSelectionActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x10400f1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 111
    iget-object v1, p0, Lcom/oppo/server/PermissionSelectionActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x10400f2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 113
    const v1, 0x104000a

    invoke-virtual {p0, v1}, Lcom/oppo/server/PermissionSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 114
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 116
    const/high16 v1, 0x104

    invoke-virtual {p0, v1}, Lcom/oppo/server/PermissionSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 117
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 119
    invoke-virtual {p0}, Lcom/oppo/server/PermissionSelectionActivity;->setupAlert()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 153
    invoke-super {p0, p1, p2}, Lcom/android/internal/app/AlertActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
