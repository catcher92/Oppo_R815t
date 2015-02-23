.class Lcom/oppo/widget/OppoCommaEditText$ItemChecker;
.super Ljava/lang/Object;
.source "OppoCommaEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoCommaEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemChecker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoCommaEditText$ItemChecker$ItemParser;
    }
.end annotation


# instance fields
.field private mItemParser:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/widget/OppoCommaEditText$ItemChecker$ItemParser;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/oppo/widget/OppoCommaEditText;


# direct methods
.method private constructor <init>(Lcom/oppo/widget/OppoCommaEditText;)V
    .locals 1
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/oppo/widget/OppoCommaEditText$ItemChecker;->this$0:Lcom/oppo/widget/OppoCommaEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/OppoCommaEditText$ItemChecker;->mItemParser:Ljava/util/List;

    .line 286
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/widget/OppoCommaEditText;Lcom/oppo/widget/OppoCommaEditText$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoCommaEditText$ItemChecker;-><init>(Lcom/oppo/widget/OppoCommaEditText;)V

    return-void
.end method


# virtual methods
.method public updateItemCheckSpans(II)V
    .locals 16
    .parameter "start"
    .parameter "end"

    .prologue
    .line 223
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoCommaEditText$ItemChecker;->this$0:Lcom/oppo/widget/OppoCommaEditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 225
    .local v3, editable:Landroid/text/Editable;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoCommaEditText$ItemChecker;->mItemParser:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v9

    .line 228
    .local v9, length:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v9, :cond_8

    .line 229
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoCommaEditText$ItemChecker;->mItemParser:Ljava/util/List;

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oppo/widget/OppoCommaEditText$ItemChecker$ItemParser;

    .line 230
    .local v8, itemparser:Lcom/oppo/widget/OppoCommaEditText$ItemChecker$ItemParser;
    invoke-virtual {v8}, Lcom/oppo/widget/OppoCommaEditText$ItemChecker$ItemParser;->getSpanStart()I

    move-result v13

    .line 231
    .local v13, showStart:I
    invoke-virtual {v8}, Lcom/oppo/widget/OppoCommaEditText$ItemChecker$ItemParser;->getSpanEnd()I

    move-result v12

    .line 234
    .local v12, showEnd:I
    const/4 v6, 0x0

    .line 235
    .local v6, isBegin:Z
    move/from16 v0, p2

    if-lt v0, v13, :cond_0

    move/from16 v0, p1

    if-le v0, v12, :cond_1

    .line 236
    :cond_0
    const/4 v6, 0x1

    .line 240
    :cond_1
    if-nez v6, :cond_7

    .line 241
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v3, v0, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 244
    .local v5, input:Ljava/lang/String;
    const-string v14, ","

    invoke-virtual {v5, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_2

    const-string v14, "\uff0c"

    invoke-virtual {v5, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 246
    :cond_2
    invoke-virtual {v8}, Lcom/oppo/widget/OppoCommaEditText$ItemChecker$ItemParser;->getShowCharSequence()Ljava/lang/CharSequence;

    move-result-object v11

    .line 249
    .local v11, show:Ljava/lang/CharSequence;
    new-instance v10, Ljava/lang/StringBuffer;

    const-string v14, ""

    invoke-direct {v10, v14}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 250
    .local v10, replace:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 251
    .local v2, bVailde:Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoCommaEditText$ItemChecker;->this$0:Lcom/oppo/widget/OppoCommaEditText;

    #getter for: Lcom/oppo/widget/OppoCommaEditText;->mOnVaildeItemListener:Lcom/oppo/widget/OppoCommaEditText$OnVaildeItemListener;
    invoke-static {v14}, Lcom/oppo/widget/OppoCommaEditText;->access$200(Lcom/oppo/widget/OppoCommaEditText;)Lcom/oppo/widget/OppoCommaEditText$OnVaildeItemListener;

    move-result-object v14

    if-eqz v14, :cond_3

    .line 252
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoCommaEditText$ItemChecker;->this$0:Lcom/oppo/widget/OppoCommaEditText;

    #getter for: Lcom/oppo/widget/OppoCommaEditText;->mOnVaildeItemListener:Lcom/oppo/widget/OppoCommaEditText$OnVaildeItemListener;
    invoke-static {v14}, Lcom/oppo/widget/OppoCommaEditText;->access$200(Lcom/oppo/widget/OppoCommaEditText;)Lcom/oppo/widget/OppoCommaEditText$OnVaildeItemListener;

    move-result-object v14

    invoke-interface {v14, v11, v13, v12, v10}, Lcom/oppo/widget/OppoCommaEditText$OnVaildeItemListener;->OnVailde(Ljava/lang/CharSequence;IILjava/lang/StringBuffer;)Z

    move-result v2

    .line 255
    :cond_3
    invoke-virtual {v8}, Lcom/oppo/widget/OppoCommaEditText$ItemChecker$ItemParser;->finish()V

    .line 256
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoCommaEditText$ItemChecker;->mItemParser:Ljava/util/List;

    invoke-interface {v14, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 257
    const/4 v14, 0x1

    if-ne v2, v14, :cond_6

    .line 258
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 259
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    .line 263
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoCommaEditText$ItemChecker;->this$0:Lcom/oppo/widget/OppoCommaEditText;

    #calls: Lcom/oppo/widget/OppoCommaEditText;->setImageSpan(Ljava/lang/CharSequence;IILjava/lang/CharSequence;)V
    invoke-static {v14, v3, v13, v12, v11}, Lcom/oppo/widget/OppoCommaEditText;->access$300(Lcom/oppo/widget/OppoCommaEditText;Ljava/lang/CharSequence;IILjava/lang/CharSequence;)V

    .line 281
    .end local v2           #bVailde:Z
    .end local v5           #input:Ljava/lang/String;
    .end local v6           #isBegin:Z
    .end local v8           #itemparser:Lcom/oppo/widget/OppoCommaEditText$ItemChecker$ItemParser;
    .end local v10           #replace:Ljava/lang/StringBuffer;
    .end local v11           #show:Ljava/lang/CharSequence;
    .end local v12           #showEnd:I
    .end local v13           #showStart:I
    :cond_5
    :goto_1
    return-void

    .line 267
    .restart local v2       #bVailde:Z
    .restart local v5       #input:Ljava/lang/String;
    .restart local v6       #isBegin:Z
    .restart local v8       #itemparser:Lcom/oppo/widget/OppoCommaEditText$ItemChecker$ItemParser;
    .restart local v10       #replace:Ljava/lang/StringBuffer;
    .restart local v11       #show:Ljava/lang/CharSequence;
    .restart local v12       #showEnd:I
    .restart local v13       #showStart:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoCommaEditText$ItemChecker;->this$0:Lcom/oppo/widget/OppoCommaEditText;

    #calls: Lcom/oppo/widget/OppoCommaEditText;->removeItem(II)V
    invoke-static {v14, v13, v12}, Lcom/oppo/widget/OppoCommaEditText;->access$400(Lcom/oppo/widget/OppoCommaEditText;II)V

    goto :goto_1

    .line 228
    .end local v2           #bVailde:Z
    .end local v5           #input:Ljava/lang/String;
    .end local v10           #replace:Ljava/lang/StringBuffer;
    .end local v11           #show:Ljava/lang/CharSequence;
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 276
    .end local v6           #isBegin:Z
    .end local v8           #itemparser:Lcom/oppo/widget/OppoCommaEditText$ItemChecker$ItemParser;
    .end local v12           #showEnd:I
    .end local v13           #showStart:I
    :cond_8
    new-instance v7, Lcom/oppo/widget/OppoCommaEditText$ItemChecker$ItemParser;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v14}, Lcom/oppo/widget/OppoCommaEditText$ItemChecker$ItemParser;-><init>(Lcom/oppo/widget/OppoCommaEditText$ItemChecker;Lcom/oppo/widget/OppoCommaEditText$1;)V

    .line 277
    .local v7, itemParser:Lcom/oppo/widget/OppoCommaEditText$ItemChecker$ItemParser;
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v7, v0, v1}, Lcom/oppo/widget/OppoCommaEditText$ItemChecker$ItemParser;->init(II)V

    .line 278
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoCommaEditText$ItemChecker;->mItemParser:Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
