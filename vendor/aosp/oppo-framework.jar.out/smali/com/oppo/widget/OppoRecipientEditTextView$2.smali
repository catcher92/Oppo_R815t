.class Lcom/oppo/widget/OppoRecipientEditTextView$2;
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
    .line 238
    iput-object p1, p0, Lcom/oppo/widget/OppoRecipientEditTextView$2;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView$2;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoRecipientEditTextView;->handlePendingChips()V

    .line 243
    return-void
.end method
