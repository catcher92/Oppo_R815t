.class Lcom/oppo/widget/OppoRecipientEditTextView$7;
.super Ljava/lang/Object;
.source "OppoRecipientEditTextView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/OppoRecipientEditTextView;->getSortedRecipients()[Lcom/oppo/widget/OppoRecipientChip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/oppo/widget/OppoRecipientChip;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

.field final synthetic val$spannable:Landroid/text/Spannable;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoRecipientEditTextView;Landroid/text/Spannable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2099
    iput-object p1, p0, Lcom/oppo/widget/OppoRecipientEditTextView$7;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    iput-object p2, p0, Lcom/oppo/widget/OppoRecipientEditTextView$7;->val$spannable:Landroid/text/Spannable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/oppo/widget/OppoRecipientChip;Lcom/oppo/widget/OppoRecipientChip;)I
    .locals 3
    .parameter "first"
    .parameter "second"

    .prologue
    .line 2103
    iget-object v2, p0, Lcom/oppo/widget/OppoRecipientEditTextView$7;->val$spannable:Landroid/text/Spannable;

    invoke-interface {v2, p1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 2104
    .local v0, firstStart:I
    iget-object v2, p0, Lcom/oppo/widget/OppoRecipientEditTextView$7;->val$spannable:Landroid/text/Spannable;

    invoke-interface {v2, p2}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 2106
    .local v1, secondStart:I
    if-ge v0, v1, :cond_0

    .line 2107
    const/4 v2, -0x1

    .line 2111
    :goto_0
    return v2

    .line 2108
    :cond_0
    if-le v0, v1, :cond_1

    .line 2109
    const/4 v2, 0x1

    goto :goto_0

    .line 2111
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2099
    check-cast p1, Lcom/oppo/widget/OppoRecipientChip;

    .end local p1
    check-cast p2, Lcom/oppo/widget/OppoRecipientChip;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/oppo/widget/OppoRecipientEditTextView$7;->compare(Lcom/oppo/widget/OppoRecipientChip;Lcom/oppo/widget/OppoRecipientChip;)I

    move-result v0

    return v0
.end method
