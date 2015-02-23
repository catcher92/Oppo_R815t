.class Lcom/oppo/widget/OppoRecipientEditTextView$MoreImageSpan;
.super Landroid/text/style/ImageSpan;
.source "OppoRecipientEditTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoRecipientEditTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoreImageSpan"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoRecipientEditTextView;


# direct methods
.method public constructor <init>(Lcom/oppo/widget/OppoRecipientEditTextView;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter
    .parameter "b"

    .prologue
    .line 2960
    iput-object p1, p0, Lcom/oppo/widget/OppoRecipientEditTextView$MoreImageSpan;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    .line 2961
    invoke-direct {p0, p2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 2962
    return-void
.end method
