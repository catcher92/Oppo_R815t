.class Lcom/oppo/widget/OppoRecipientEditTextView$RecipientTextWatcher;
.super Ljava/lang/Object;
.source "OppoRecipientEditTextView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoRecipientEditTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecipientTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoRecipientEditTextView;


# direct methods
.method private constructor <init>(Lcom/oppo/widget/OppoRecipientEditTextView;)V
    .locals 0
    .parameter

    .prologue
    .line 2555
    iput-object p1, p0, Lcom/oppo/widget/OppoRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/widget/OppoRecipientEditTextView;Lcom/oppo/widget/OppoRecipientEditTextView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2555
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoRecipientEditTextView$RecipientTextWatcher;-><init>(Lcom/oppo/widget/OppoRecipientEditTextView;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 18
    .parameter "s"

    .prologue
    .line 2561
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 2563
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    invoke-virtual {v14}, Lcom/oppo/widget/OppoRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v10

    .line 2564
    .local v10, spannable:Landroid/text/Spannable;
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/widget/OppoRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    invoke-virtual {v15}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-interface {v15}, Landroid/text/Editable;->length()I

    move-result v15

    const-class v16, Lcom/oppo/widget/OppoRecipientChip;

    move-object/from16 v0, v16

    invoke-interface {v10, v14, v15, v0}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/oppo/widget/OppoRecipientChip;

    .line 2566
    .local v3, chips:[Lcom/oppo/widget/OppoRecipientChip;
    move-object v1, v3

    .local v1, arr$:[Lcom/oppo/widget/OppoRecipientChip;
    array-length v8, v1

    .local v8, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v8, :cond_0

    aget-object v2, v1, v5

    .line 2567
    .local v2, chip:Lcom/oppo/widget/OppoRecipientChip;
    invoke-interface {v10, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2566
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2569
    .end local v2           #chip:Lcom/oppo/widget/OppoRecipientChip;
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    #getter for: Lcom/oppo/widget/OppoRecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;
    invoke-static {v14}, Lcom/oppo/widget/OppoRecipientEditTextView;->access$1000(Lcom/oppo/widget/OppoRecipientEditTextView;)Landroid/text/style/ImageSpan;

    move-result-object v14

    if-eqz v14, :cond_1

    .line 2570
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    #getter for: Lcom/oppo/widget/OppoRecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;
    invoke-static {v14}, Lcom/oppo/widget/OppoRecipientEditTextView;->access$1000(Lcom/oppo/widget/OppoRecipientEditTextView;)Landroid/text/style/ImageSpan;

    move-result-object v14

    invoke-interface {v10, v14}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2617
    .end local v1           #arr$:[Lcom/oppo/widget/OppoRecipientChip;
    .end local v3           #chips:[Lcom/oppo/widget/OppoRecipientChip;
    .end local v5           #i$:I
    .end local v8           #len$:I
    .end local v10           #spannable:Landroid/text/Spannable;
    :cond_1
    :goto_1
    return-void

    .line 2576
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    #calls: Lcom/oppo/widget/OppoRecipientEditTextView;->chipsPending()Z
    invoke-static {v14}, Lcom/oppo/widget/OppoRecipientEditTextView;->access$1100(Lcom/oppo/widget/OppoRecipientEditTextView;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 2580
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    #getter for: Lcom/oppo/widget/OppoRecipientEditTextView;->mSelectedChip:Lcom/oppo/widget/OppoRecipientChip;
    invoke-static {v14}, Lcom/oppo/widget/OppoRecipientEditTextView;->access$400(Lcom/oppo/widget/OppoRecipientEditTextView;)Lcom/oppo/widget/OppoRecipientChip;

    move-result-object v14

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    #getter for: Lcom/oppo/widget/OppoRecipientEditTextView;->mSelectedChip:Lcom/oppo/widget/OppoRecipientChip;
    invoke-static {v14}, Lcom/oppo/widget/OppoRecipientEditTextView;->access$400(Lcom/oppo/widget/OppoRecipientEditTextView;)Lcom/oppo/widget/OppoRecipientChip;

    move-result-object v14

    invoke-virtual {v14}, Lcom/oppo/widget/OppoRecipientChip;->getContactId()J

    move-result-wide v14

    const-wide/16 v16, -0x1

    cmp-long v14, v14, v16

    if-eqz v14, :cond_4

    .line 2582
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 2583
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    #getter for: Lcom/oppo/widget/OppoRecipientEditTextView;->mCursorVisible:Z
    invoke-static {v14}, Lcom/oppo/widget/OppoRecipientEditTextView;->access$1200(Lcom/oppo/widget/OppoRecipientEditTextView;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 2584
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/widget/OppoRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    invoke-virtual {v15}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-interface {v15}, Landroid/text/Editable;->length()I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setSelection(I)V

    .line 2586
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    #calls: Lcom/oppo/widget/OppoRecipientEditTextView;->clearSelectedChip()V
    invoke-static {v14}, Lcom/oppo/widget/OppoRecipientEditTextView;->access$1300(Lcom/oppo/widget/OppoRecipientEditTextView;)V

    .line 2588
    :cond_4
    invoke-interface/range {p1 .. p1}, Landroid/text/Editable;->length()I

    move-result v9

    .line 2591
    .local v9, length:I
    const/4 v14, 0x1

    if-le v9, v14, :cond_1

    .line 2593
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v14

    if-nez v14, :cond_6

    const/4 v4, 0x0

    .line 2594
    .local v4, end:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->length()I

    move-result v14

    add-int/lit8 v7, v14, -0x1

    .line 2595
    .local v7, len:I
    if-eq v4, v7, :cond_7

    .line 2596
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v6

    .line 2600
    .local v6, last:C
    :goto_3
    const/16 v14, 0x3b

    if-eq v6, v14, :cond_5

    const/16 v14, 0x2c

    if-eq v6, v14, :cond_5

    const v14, 0xff0c

    if-ne v6, v14, :cond_8

    .line 2602
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    #calls: Lcom/oppo/widget/OppoRecipientEditTextView;->commitByCharacter()V
    invoke-static {v14}, Lcom/oppo/widget/OppoRecipientEditTextView;->access$1400(Lcom/oppo/widget/OppoRecipientEditTextView;)V

    goto/16 :goto_1

    .line 2593
    .end local v4           #end:I
    .end local v6           #last:C
    .end local v7           #len:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v14

    add-int/lit8 v4, v14, -0x1

    goto :goto_2

    .line 2598
    .restart local v4       #end:I
    .restart local v7       #len:I
    :cond_7
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/text/Editable;->charAt(I)C

    move-result v6

    .restart local v6       #last:C
    goto :goto_3

    .line 2603
    :cond_8
    const/16 v14, 0x20

    if-ne v6, v14, :cond_1

    .line 2607
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2608
    .local v12, text:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    #getter for: Lcom/oppo/widget/OppoRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;
    invoke-static {v14}, Lcom/oppo/widget/OppoRecipientEditTextView;->access$1500(Lcom/oppo/widget/OppoRecipientEditTextView;)Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/widget/OppoRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v15

    invoke-interface {v14, v12, v15}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v13

    .line 2609
    .local v13, tokenStart:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    #getter for: Lcom/oppo/widget/OppoRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;
    invoke-static {v14}, Lcom/oppo/widget/OppoRecipientEditTextView;->access$1500(Lcom/oppo/widget/OppoRecipientEditTextView;)Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    move-result-object v14

    invoke-interface {v14, v12, v13}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v14

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 2611
    .local v11, sub:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    #getter for: Lcom/oppo/widget/OppoRecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;
    invoke-static {v14}, Lcom/oppo/widget/OppoRecipientEditTextView;->access$1600(Lcom/oppo/widget/OppoRecipientEditTextView;)Landroid/widget/AutoCompleteTextView$Validator;

    move-result-object v14

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    #getter for: Lcom/oppo/widget/OppoRecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;
    invoke-static {v14}, Lcom/oppo/widget/OppoRecipientEditTextView;->access$1600(Lcom/oppo/widget/OppoRecipientEditTextView;)Landroid/widget/AutoCompleteTextView$Validator;

    move-result-object v14

    invoke-interface {v14, v11}, Landroid/widget/AutoCompleteTextView$Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 2612
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    #calls: Lcom/oppo/widget/OppoRecipientEditTextView;->commitByCharacter()V
    invoke-static {v14}, Lcom/oppo/widget/OppoRecipientEditTextView;->access$1400(Lcom/oppo/widget/OppoRecipientEditTextView;)V

    goto/16 :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 2651
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 7
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 2623
    if-le p3, p4, :cond_2

    .line 2626
    iget-object v5, p0, Lcom/oppo/widget/OppoRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    .line 2627
    .local v2, selStart:I
    iget-object v5, p0, Lcom/oppo/widget/OppoRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    invoke-virtual {v5}, Lcom/oppo/widget/OppoRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v5

    const-class v6, Lcom/oppo/widget/OppoRecipientChip;

    invoke-interface {v5, v2, v2, v6}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/oppo/widget/OppoRecipientChip;

    .line 2629
    .local v1, repl:[Lcom/oppo/widget/OppoRecipientChip;
    array-length v5, v1

    if-lez v5, :cond_1

    .line 2631
    iget-object v5, p0, Lcom/oppo/widget/OppoRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 2633
    .local v0, editable:Landroid/text/Editable;
    iget-object v5, p0, Lcom/oppo/widget/OppoRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    #getter for: Lcom/oppo/widget/OppoRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;
    invoke-static {v5}, Lcom/oppo/widget/OppoRecipientEditTextView;->access$1500(Lcom/oppo/widget/OppoRecipientEditTextView;)Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    move-result-object v5

    invoke-interface {v5, v0, v2}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 2634
    .local v4, tokenStart:I
    iget-object v5, p0, Lcom/oppo/widget/OppoRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    #getter for: Lcom/oppo/widget/OppoRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;
    invoke-static {v5}, Lcom/oppo/widget/OppoRecipientEditTextView;->access$1500(Lcom/oppo/widget/OppoRecipientEditTextView;)Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    move-result-object v5

    invoke-interface {v5, v0, v4}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 2635
    .local v3, tokenEnd:I
    add-int/lit8 v3, v3, 0x1

    .line 2636
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v5

    if-le v3, v5, :cond_0

    .line 2637
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    .line 2639
    :cond_0
    invoke-interface {v0, v4, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 2640
    iget-object v5, p0, Lcom/oppo/widget/OppoRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    invoke-virtual {v5}, Lcom/oppo/widget/OppoRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v1, v6

    invoke-interface {v5, v6}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2646
    .end local v0           #editable:Landroid/text/Editable;
    .end local v1           #repl:[Lcom/oppo/widget/OppoRecipientChip;
    .end local v2           #selStart:I
    .end local v3           #tokenEnd:I
    .end local v4           #tokenStart:I
    :cond_1
    :goto_0
    return-void

    .line 2642
    :cond_2
    if-le p4, p3, :cond_1

    .line 2644
    iget-object v5, p0, Lcom/oppo/widget/OppoRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    #calls: Lcom/oppo/widget/OppoRecipientEditTextView;->scrollBottomIntoView()V
    invoke-static {v5}, Lcom/oppo/widget/OppoRecipientEditTextView;->access$1700(Lcom/oppo/widget/OppoRecipientEditTextView;)V

    goto :goto_0
.end method
