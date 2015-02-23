.class Lcom/oppo/widget/OppoRecipientEditTextView$4;
.super Ljava/lang/Object;
.source "OppoRecipientEditTextView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 263
    iput-object p1, p0, Lcom/oppo/widget/OppoRecipientEditTextView$4;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "rowId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 267
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/oppo/widget/OppoRecipientEditTextView$4;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    #getter for: Lcom/oppo/widget/OppoRecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;
    invoke-static {v1}, Lcom/oppo/widget/OppoRecipientEditTextView;->access$300(Lcom/oppo/widget/OppoRecipientEditTextView;)Landroid/widget/ListPopupWindow;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 268
    iget-object v2, p0, Lcom/oppo/widget/OppoRecipientEditTextView$4;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    iget-object v1, p0, Lcom/oppo/widget/OppoRecipientEditTextView$4;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    #getter for: Lcom/oppo/widget/OppoRecipientEditTextView;->mSelectedChip:Lcom/oppo/widget/OppoRecipientChip;
    invoke-static {v1}, Lcom/oppo/widget/OppoRecipientEditTextView;->access$400(Lcom/oppo/widget/OppoRecipientEditTextView;)Lcom/oppo/widget/OppoRecipientChip;

    move-result-object v3

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    check-cast v1, Lcom/oppo/widget/OppoRecipientAlternatesAdapter;

    invoke-virtual {v1, p3}, Lcom/oppo/widget/OppoRecipientAlternatesAdapter;->getRecipientEntry(I)Lcom/oppo/widget/OppoRecipientEntry;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/oppo/widget/OppoRecipientEditTextView;->replaceChip(Lcom/oppo/widget/OppoRecipientChip;Lcom/oppo/widget/OppoRecipientEntry;)V

    .line 270
    iget-object v1, p0, Lcom/oppo/widget/OppoRecipientEditTextView$4;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    #getter for: Lcom/oppo/widget/OppoRecipientEditTextView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/oppo/widget/OppoRecipientEditTextView;->access$500(Lcom/oppo/widget/OppoRecipientEditTextView;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {}, Lcom/oppo/widget/OppoRecipientEditTextView;->access$600()I

    move-result v2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 271
    .local v0, delayed:Landroid/os/Message;
    iget-object v1, p0, Lcom/oppo/widget/OppoRecipientEditTextView$4;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    #getter for: Lcom/oppo/widget/OppoRecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;
    invoke-static {v1}, Lcom/oppo/widget/OppoRecipientEditTextView;->access$300(Lcom/oppo/widget/OppoRecipientEditTextView;)Landroid/widget/ListPopupWindow;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 272
    iget-object v1, p0, Lcom/oppo/widget/OppoRecipientEditTextView$4;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    #getter for: Lcom/oppo/widget/OppoRecipientEditTextView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/oppo/widget/OppoRecipientEditTextView;->access$500(Lcom/oppo/widget/OppoRecipientEditTextView;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 273
    iget-object v1, p0, Lcom/oppo/widget/OppoRecipientEditTextView$4;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->clearComposingText()V

    .line 274
    return-void
.end method
