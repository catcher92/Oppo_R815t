.class Lcom/android/internal/policy/impl/OppoGlobalActions$7;
.super Landroid/os/Handler;
.source "OppoGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/OppoGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/OppoGlobalActions;)V
    .locals 0
    .parameter

    .prologue
    .line 803
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$7;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 806
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 820
    :cond_0
    :goto_0
    return-void

    .line 808
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$7;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1400(Lcom/android/internal/policy/impl/OppoGlobalActions;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 809
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$7;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1400(Lcom/android/internal/policy/impl/OppoGlobalActions;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 813
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$7;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    #calls: Lcom/android/internal/policy/impl/OppoGlobalActions;->refreshSilentMode()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1500(Lcom/android/internal/policy/impl/OppoGlobalActions;)V

    .line 814
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$7;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;
    invoke-static {v0}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$100(Lcom/android/internal/policy/impl/OppoGlobalActions;)Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 817
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$7;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    #calls: Lcom/android/internal/policy/impl/OppoGlobalActions;->handleShow()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1600(Lcom/android/internal/policy/impl/OppoGlobalActions;)V

    goto :goto_0

    .line 806
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
