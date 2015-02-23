.class Lcom/oppo/view/OppoVolumePanel$WarningDialogReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OppoVolumePanel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/view/OppoVolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WarningDialogReceiver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mSeekBar:Landroid/widget/OppoSeekBar;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/app/Dialog;)V
    .locals 2
    .parameter "context"
    .parameter "dialog"

    .prologue
    .line 275
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 273
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/view/OppoVolumePanel$WarningDialogReceiver;->mSeekBar:Landroid/widget/OppoSeekBar;

    .line 276
    iput-object p1, p0, Lcom/oppo/view/OppoVolumePanel$WarningDialogReceiver;->mContext:Landroid/content/Context;

    .line 277
    iput-object p2, p0, Lcom/oppo/view/OppoVolumePanel$WarningDialogReceiver;->mDialog:Landroid/app/Dialog;

    .line 278
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 279
    .local v0, filter:Landroid/content/IntentFilter;
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 280
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/app/Dialog;Landroid/widget/OppoSeekBar;)V
    .locals 2
    .parameter "context"
    .parameter "dialog"
    .parameter "seekbar"

    .prologue
    .line 283
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 273
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/view/OppoVolumePanel$WarningDialogReceiver;->mSeekBar:Landroid/widget/OppoSeekBar;

    .line 284
    iput-object p1, p0, Lcom/oppo/view/OppoVolumePanel$WarningDialogReceiver;->mContext:Landroid/content/Context;

    .line 285
    iput-object p2, p0, Lcom/oppo/view/OppoVolumePanel$WarningDialogReceiver;->mDialog:Landroid/app/Dialog;

    .line 286
    iput-object p3, p0, Lcom/oppo/view/OppoVolumePanel$WarningDialogReceiver;->mSeekBar:Landroid/widget/OppoSeekBar;

    .line 287
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 288
    .local v0, filter:Landroid/content/IntentFilter;
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 289
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "unused"

    .prologue
    .line 301
    iget-object v0, p0, Lcom/oppo/view/OppoVolumePanel$WarningDialogReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 302
    invoke-static {}, Lcom/oppo/view/OppoVolumePanel;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 303
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/oppo/view/OppoVolumePanel;->access$102(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 306
    iget-object v0, p0, Lcom/oppo/view/OppoVolumePanel$WarningDialogReceiver;->mSeekBar:Landroid/widget/OppoSeekBar;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/oppo/view/OppoVolumePanel$WarningDialogReceiver;->mSeekBar:Landroid/widget/OppoSeekBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/OppoSeekBar;->setSafeMediaVolumeEnabled(Z)V

    .line 310
    :cond_0
    monitor-exit v1

    .line 311
    return-void

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 294
    iget-object v0, p0, Lcom/oppo/view/OppoVolumePanel$WarningDialogReceiver;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 295
    invoke-static {}, Lcom/oppo/view/OppoVolumePanel;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 296
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/oppo/view/OppoVolumePanel;->access$102(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 297
    monitor-exit v1

    .line 298
    return-void

    .line 297
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
