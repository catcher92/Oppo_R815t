.class Lcom/android/server/am/OppoPermissionInterceptPolicy$ChoiceCountDownTimer;
.super Landroid/os/CountDownTimer;
.source "OppoPermissionInterceptPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OppoPermissionInterceptPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChoiceCountDownTimer"
.end annotation


# instance fields
.field pcm:Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;

.field permissionChoiceDialog:Landroid/app/AlertDialog;

.field rejectBtn:Landroid/widget/Button;

.field final synthetic this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OppoPermissionInterceptPolicy;JJ)V
    .locals 0
    .parameter
    .parameter "millisInFuture"
    .parameter "countDownInterval"

    .prologue
    .line 583
    iput-object p1, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$ChoiceCountDownTimer;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    .line 584
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 585
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    .prologue
    .line 589
    iget-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$ChoiceCountDownTimer;->permissionChoiceDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 590
    iget-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$ChoiceCountDownTimer;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    iget-object v1, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$ChoiceCountDownTimer;->pcm:Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$ChoiceCountDownTimer;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    #getter for: Lcom/android/server/am/OppoPermissionInterceptPolicy;->mSaveCheckBox:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$800(Lcom/android/server/am/OppoPermissionInterceptPolicy;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    #calls: Lcom/android/server/am/OppoPermissionInterceptPolicy;->processPermission(Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;IZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$900(Lcom/android/server/am/OppoPermissionInterceptPolicy;Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;IZ)V

    .line 591
    return-void
.end method

.method public onTick(J)V
    .locals 4
    .parameter "millisUntilFinished"

    .prologue
    .line 595
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$ChoiceCountDownTimer;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    #getter for: Lcom/android/server/am/OppoPermissionInterceptPolicy;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$1100(Lcom/android/server/am/OppoPermissionInterceptPolicy;)Landroid/content/Context;

    move-result-object v2

    const v3, 0xc040487

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 597
    .local v0, str:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$ChoiceCountDownTimer;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    #calls: Lcom/android/server/am/OppoPermissionInterceptPolicy;->isScreenOn()Z
    invoke-static {v1}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$1200(Lcom/android/server/am/OppoPermissionInterceptPolicy;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 598
    iget-object v1, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$ChoiceCountDownTimer;->rejectBtn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 602
    :goto_0
    return-void

    .line 600
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/OppoPermissionInterceptPolicy$ChoiceCountDownTimer;->onFinish()V

    goto :goto_0
.end method
