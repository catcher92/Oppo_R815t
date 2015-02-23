.class Lcom/oppo/widget/OppoRecipientEditTextView$5;
.super Landroid/os/Handler;
.source "OppoRecipientEditTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/OppoRecipientEditTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoRecipientEditTextView;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoRecipientEditTextView;)V
    .locals 0
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lcom/oppo/widget/OppoRecipientEditTextView$5;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 283
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/oppo/widget/OppoRecipientEditTextView;->access$600()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 284
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 288
    :goto_0
    return-void

    .line 287
    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method
