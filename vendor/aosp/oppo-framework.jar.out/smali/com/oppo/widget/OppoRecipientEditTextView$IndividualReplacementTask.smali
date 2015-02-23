.class Lcom/oppo/widget/OppoRecipientEditTextView$IndividualReplacementTask;
.super Landroid/os/AsyncTask;
.source "OppoRecipientEditTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoRecipientEditTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IndividualReplacementTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoRecipientEditTextView;


# direct methods
.method private constructor <init>(Lcom/oppo/widget/OppoRecipientEditTextView;)V
    .locals 0
    .parameter

    .prologue
    .line 2903
    iput-object p1, p0, Lcom/oppo/widget/OppoRecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/widget/OppoRecipientEditTextView;Lcom/oppo/widget/OppoRecipientEditTextView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2903
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoRecipientEditTextView$IndividualReplacementTask;-><init>(Lcom/oppo/widget/OppoRecipientEditTextView;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2903
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoRecipientEditTextView$IndividualReplacementTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 11
    .parameter "params"

    .prologue
    const/4 v10, 0x0

    .line 2911
    iget-object v7, p0, Lcom/oppo/widget/OppoRecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    #getter for: Lcom/oppo/widget/OppoRecipientEditTextView;->mOppoRecipientAlternatesAdapter:Lcom/oppo/widget/OppoRecipientAlternatesAdapter;
    invoke-static {v7}, Lcom/oppo/widget/OppoRecipientEditTextView;->access$2100(Lcom/oppo/widget/OppoRecipientEditTextView;)Lcom/oppo/widget/OppoRecipientAlternatesAdapter;

    move-result-object v7

    if-nez v7, :cond_1

    .line 2950
    :cond_0
    return-object v10

    .line 2915
    :cond_1
    const/4 v7, 0x0

    aget-object v5, p1, v7

    check-cast v5, Ljava/util/ArrayList;

    .line 2927
    .local v5, originalRecipients:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/oppo/widget/OppoRecipientChip;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v0, v7, [Ljava/lang/String;

    .line 2928
    .local v0, addresses:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_2

    .line 2929
    iget-object v8, p0, Lcom/oppo/widget/OppoRecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oppo/widget/OppoRecipientChip;

    invoke-virtual {v7}, Lcom/oppo/widget/OppoRecipientChip;->getEntry()Lcom/oppo/widget/OppoRecipientEntry;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/oppo/widget/OppoRecipientEditTextView;->createAddressText(Lcom/oppo/widget/OppoRecipientEntry;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v3

    .line 2928
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2931
    :cond_2
    iget-object v7, p0, Lcom/oppo/widget/OppoRecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    #getter for: Lcom/oppo/widget/OppoRecipientEditTextView;->mOppoRecipientAlternatesAdapter:Lcom/oppo/widget/OppoRecipientAlternatesAdapter;
    invoke-static {v7}, Lcom/oppo/widget/OppoRecipientEditTextView;->access$2100(Lcom/oppo/widget/OppoRecipientEditTextView;)Lcom/oppo/widget/OppoRecipientAlternatesAdapter;

    move-result-object v7

    iget-object v8, p0, Lcom/oppo/widget/OppoRecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Lcom/oppo/widget/OppoRecipientAlternatesAdapter;->getMatchingRecipients(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 2933
    .local v1, entries:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/oppo/widget/OppoRecipientEntry;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oppo/widget/OppoRecipientChip;

    .line 2934
    .local v6, temp:Lcom/oppo/widget/OppoRecipientChip;
    invoke-virtual {v6}, Lcom/oppo/widget/OppoRecipientChip;->getEntry()Lcom/oppo/widget/OppoRecipientEntry;

    move-result-object v7

    invoke-virtual {v7}, Lcom/oppo/widget/OppoRecipientEntry;->getContactId()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/oppo/widget/OppoRecipientEntry;->isCreatedRecipient(J)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/oppo/widget/OppoRecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    invoke-virtual {v7}, Lcom/oppo/widget/OppoRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v7

    invoke-interface {v7, v6}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    .line 2937
    iget-object v8, p0, Lcom/oppo/widget/OppoRecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    iget-object v7, p0, Lcom/oppo/widget/OppoRecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    invoke-virtual {v6}, Lcom/oppo/widget/OppoRecipientChip;->getEntry()Lcom/oppo/widget/OppoRecipientEntry;

    move-result-object v9

    invoke-virtual {v9}, Lcom/oppo/widget/OppoRecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/oppo/widget/OppoRecipientEditTextView;->tokenizeAddress(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v7, v9}, Lcom/oppo/widget/OppoRecipientEditTextView;->access$2300(Lcom/oppo/widget/OppoRecipientEditTextView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oppo/widget/OppoRecipientEntry;

    #calls: Lcom/oppo/widget/OppoRecipientEditTextView;->createValidatedEntry(Lcom/oppo/widget/OppoRecipientEntry;)Lcom/oppo/widget/OppoRecipientEntry;
    invoke-static {v8, v7}, Lcom/oppo/widget/OppoRecipientEditTextView;->access$2400(Lcom/oppo/widget/OppoRecipientEditTextView;Lcom/oppo/widget/OppoRecipientEntry;)Lcom/oppo/widget/OppoRecipientEntry;

    move-result-object v2

    .line 2939
    .local v2, entry:Lcom/oppo/widget/OppoRecipientEntry;
    if-eqz v2, :cond_3

    .line 2940
    iget-object v7, p0, Lcom/oppo/widget/OppoRecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    #getter for: Lcom/oppo/widget/OppoRecipientEditTextView;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/oppo/widget/OppoRecipientEditTextView;->access$500(Lcom/oppo/widget/OppoRecipientEditTextView;)Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Lcom/oppo/widget/OppoRecipientEditTextView$IndividualReplacementTask$1;

    invoke-direct {v8, p0, v6, v2}, Lcom/oppo/widget/OppoRecipientEditTextView$IndividualReplacementTask$1;-><init>(Lcom/oppo/widget/OppoRecipientEditTextView$IndividualReplacementTask;Lcom/oppo/widget/OppoRecipientChip;Lcom/oppo/widget/OppoRecipientEntry;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method
