.class public Lcom/oppo/widget/OppoNumberPicker$CustomEditText;
.super Landroid/widget/EditText;
.source "OppoNumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoNumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomEditText"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 2194
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2195
    return-void
.end method


# virtual methods
.method public onEditorAction(I)V
    .locals 1
    .parameter "actionCode"

    .prologue
    .line 2199
    invoke-super {p0, p1}, Landroid/widget/TextView;->onEditorAction(I)V

    .line 2200
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 2201
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 2203
    :cond_0
    return-void
.end method
