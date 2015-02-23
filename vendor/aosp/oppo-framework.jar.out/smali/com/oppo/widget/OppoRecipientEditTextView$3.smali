.class Lcom/oppo/widget/OppoRecipientEditTextView$3;
.super Ljava/lang/Object;
.source "OppoRecipientEditTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoRecipientEditTextView;
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
    .line 246
    iput-object p1, p0, Lcom/oppo/widget/OppoRecipientEditTextView$3;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView$3;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    #calls: Lcom/oppo/widget/OppoRecipientEditTextView;->shrink()V
    invoke-static {v0}, Lcom/oppo/widget/OppoRecipientEditTextView;->access$200(Lcom/oppo/widget/OppoRecipientEditTextView;)V

    .line 251
    return-void
.end method
