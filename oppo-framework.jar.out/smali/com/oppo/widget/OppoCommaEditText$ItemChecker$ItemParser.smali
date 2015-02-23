.class Lcom/oppo/widget/OppoCommaEditText$ItemChecker$ItemParser;
.super Ljava/lang/Object;
.source "OppoCommaEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoCommaEditText$ItemChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemParser"
.end annotation


# instance fields
.field private mRange:Ljava/lang/Object;

.field final synthetic this$1:Lcom/oppo/widget/OppoCommaEditText$ItemChecker;


# direct methods
.method private constructor <init>(Lcom/oppo/widget/OppoCommaEditText$ItemChecker;)V
    .locals 1
    .parameter

    .prologue
    .line 286
    iput-object p1, p0, Lcom/oppo/widget/OppoCommaEditText$ItemChecker$ItemParser;->this$1:Lcom/oppo/widget/OppoCommaEditText$ItemChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/OppoCommaEditText$ItemChecker$ItemParser;->mRange:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/widget/OppoCommaEditText$ItemChecker;Lcom/oppo/widget/OppoCommaEditText$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 286
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoCommaEditText$ItemChecker$ItemParser;-><init>(Lcom/oppo/widget/OppoCommaEditText$ItemChecker;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/oppo/widget/OppoCommaEditText$ItemChecker$ItemParser;->this$1:Lcom/oppo/widget/OppoCommaEditText$ItemChecker;

    iget-object v0, v0, Lcom/oppo/widget/OppoCommaEditText$ItemChecker;->this$0:Lcom/oppo/widget/OppoCommaEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/widget/OppoCommaEditText$ItemChecker$ItemParser;->mRange:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 319
    return-void
.end method

.method public getShowCharSequence()Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 293
    iget-object v3, p0, Lcom/oppo/widget/OppoCommaEditText$ItemChecker$ItemParser;->this$1:Lcom/oppo/widget/OppoCommaEditText$ItemChecker;

    iget-object v3, v3, Lcom/oppo/widget/OppoCommaEditText$ItemChecker;->this$0:Lcom/oppo/widget/OppoCommaEditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 294
    .local v0, editable:Landroid/text/Editable;
    iget-object v3, p0, Lcom/oppo/widget/OppoCommaEditText$ItemChecker$ItemParser;->mRange:Ljava/lang/Object;

    invoke-interface {v0, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 295
    .local v2, start:I
    iget-object v3, p0, Lcom/oppo/widget/OppoCommaEditText$ItemChecker$ItemParser;->mRange:Ljava/lang/Object;

    invoke-interface {v0, v3}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 296
    .local v1, end:I
    if-ge v2, v1, :cond_0

    .line 297
    add-int/lit8 v3, v1, -0x1

    invoke-interface {v0, v2, v3}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 300
    :goto_0
    return-object v3

    :cond_0
    const-string v3, "wrong"

    goto :goto_0
.end method

.method public getSpanEnd()I
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/oppo/widget/OppoCommaEditText$ItemChecker$ItemParser;->this$1:Lcom/oppo/widget/OppoCommaEditText$ItemChecker;

    iget-object v0, v0, Lcom/oppo/widget/OppoCommaEditText$ItemChecker;->this$0:Lcom/oppo/widget/OppoCommaEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/widget/OppoCommaEditText$ItemChecker$ItemParser;->mRange:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getSpanStart()I
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/oppo/widget/OppoCommaEditText$ItemChecker$ItemParser;->this$1:Lcom/oppo/widget/OppoCommaEditText$ItemChecker;

    iget-object v0, v0, Lcom/oppo/widget/OppoCommaEditText$ItemChecker;->this$0:Lcom/oppo/widget/OppoCommaEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/widget/OppoCommaEditText$ItemChecker$ItemParser;->mRange:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public init(II)V
    .locals 3
    .parameter "start"
    .parameter "end"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/oppo/widget/OppoCommaEditText$ItemChecker$ItemParser;->this$1:Lcom/oppo/widget/OppoCommaEditText$ItemChecker;

    iget-object v0, v0, Lcom/oppo/widget/OppoCommaEditText$ItemChecker;->this$0:Lcom/oppo/widget/OppoCommaEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/widget/OppoCommaEditText$ItemChecker$ItemParser;->mRange:Ljava/lang/Object;

    const/16 v2, 0x12

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 315
    return-void
.end method

.method public isBegin()Z
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/oppo/widget/OppoCommaEditText$ItemChecker$ItemParser;->this$1:Lcom/oppo/widget/OppoCommaEditText$ItemChecker;

    iget-object v0, v0, Lcom/oppo/widget/OppoCommaEditText$ItemChecker;->this$0:Lcom/oppo/widget/OppoCommaEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/widget/OppoCommaEditText$ItemChecker$ItemParser;->mRange:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parse()V
    .locals 0

    .prologue
    .line 325
    return-void
.end method
