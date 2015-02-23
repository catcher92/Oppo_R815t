.class Lcom/oppo/widget/OppoRecipientEditTextView$8;
.super Ljava/lang/Object;
.source "OppoRecipientEditTextView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/OppoRecipientEditTextView;->showAddress(Lcom/oppo/widget/OppoRecipientChip;Landroid/widget/ListPopupWindow;ILandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

.field final synthetic val$currentChip:Lcom/oppo/widget/OppoRecipientChip;

.field final synthetic val$popup:Landroid/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoRecipientEditTextView;Lcom/oppo/widget/OppoRecipientChip;Landroid/widget/ListPopupWindow;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2398
    iput-object p1, p0, Lcom/oppo/widget/OppoRecipientEditTextView$8;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    iput-object p2, p0, Lcom/oppo/widget/OppoRecipientEditTextView$8;->val$currentChip:Lcom/oppo/widget/OppoRecipientChip;

    iput-object p3, p0, Lcom/oppo/widget/OppoRecipientEditTextView$8;->val$popup:Landroid/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
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
    .line 2402
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView$8;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    iget-object v1, p0, Lcom/oppo/widget/OppoRecipientEditTextView$8;->val$currentChip:Lcom/oppo/widget/OppoRecipientChip;

    #calls: Lcom/oppo/widget/OppoRecipientEditTextView;->unselectChip(Lcom/oppo/widget/OppoRecipientChip;)V
    invoke-static {v0, v1}, Lcom/oppo/widget/OppoRecipientEditTextView;->access$900(Lcom/oppo/widget/OppoRecipientEditTextView;Lcom/oppo/widget/OppoRecipientChip;)V

    .line 2403
    iget-object v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView$8;->val$popup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 2404
    return-void
.end method
