.class Lcom/oppo/widget/OppoMultiChoiceAdapter$6;
.super Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListenerAdapter;
.source "OppoMultiChoiceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoMultiChoiceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoMultiChoiceAdapter;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoMultiChoiceAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter$6;->this$0:Lcom/oppo/widget/OppoMultiChoiceAdapter;

    invoke-direct {p0}, Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getEndValue(Landroid/view/View;)F
    .locals 1
    .parameter "target"

    .prologue
    .line 209
    const/high16 v0, 0x3f80

    return v0
.end method
