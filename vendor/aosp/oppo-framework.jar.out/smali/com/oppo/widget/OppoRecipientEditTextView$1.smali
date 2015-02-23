.class Lcom/oppo/widget/OppoRecipientEditTextView$1;
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
    .line 225
    iput-object p1, p0, Lcom/oppo/widget/OppoRecipientEditTextView$1;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 229
    iget-object v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView$1;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    #getter for: Lcom/oppo/widget/OppoRecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;
    invoke-static {v0}, Lcom/oppo/widget/OppoRecipientEditTextView;->access$000(Lcom/oppo/widget/OppoRecipientEditTextView;)Landroid/text/TextWatcher;

    move-result-object v0

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView$1;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    new-instance v1, Lcom/oppo/widget/OppoRecipientEditTextView$RecipientTextWatcher;

    iget-object v2, p0, Lcom/oppo/widget/OppoRecipientEditTextView$1;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/oppo/widget/OppoRecipientEditTextView$RecipientTextWatcher;-><init>(Lcom/oppo/widget/OppoRecipientEditTextView;Lcom/oppo/widget/OppoRecipientEditTextView$1;)V

    #setter for: Lcom/oppo/widget/OppoRecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;
    invoke-static {v0, v1}, Lcom/oppo/widget/OppoRecipientEditTextView;->access$002(Lcom/oppo/widget/OppoRecipientEditTextView;Landroid/text/TextWatcher;)Landroid/text/TextWatcher;

    .line 231
    iget-object v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView$1;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    iget-object v1, p0, Lcom/oppo/widget/OppoRecipientEditTextView$1;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    #getter for: Lcom/oppo/widget/OppoRecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;
    invoke-static {v1}, Lcom/oppo/widget/OppoRecipientEditTextView;->access$000(Lcom/oppo/widget/OppoRecipientEditTextView;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 233
    :cond_0
    return-void
.end method
