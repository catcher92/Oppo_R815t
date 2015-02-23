.class Lcom/oppo/widget/OppoRecipientEditTextView$RecipientReplacementTask;
.super Landroid/os/AsyncTask;
.source "OppoRecipientEditTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoRecipientEditTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecipientReplacementTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
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
    .line 2805
    iput-object p1, p0, Lcom/oppo/widget/OppoRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/widget/OppoRecipientEditTextView;Lcom/oppo/widget/OppoRecipientEditTextView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2805
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoRecipientEditTextView$RecipientReplacementTask;-><init>(Lcom/oppo/widget/OppoRecipientEditTextView;)V

    return-void
.end method

.method private createFreeChip(Lcom/oppo/widget/OppoRecipientEntry;)Lcom/oppo/widget/OppoRecipientChip;
    .locals 5
    .parameter "entry"

    .prologue
    const/4 v1, 0x0

    .line 2809
    :try_start_0
    iget-object v2, p0, Lcom/oppo/widget/OppoRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    #getter for: Lcom/oppo/widget/OppoRecipientEditTextView;->mNoChips:Z
    invoke-static {v2}, Lcom/oppo/widget/OppoRecipientEditTextView;->access$1800(Lcom/oppo/widget/OppoRecipientEditTextView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2815
    :goto_0
    return-object v1

    .line 2812
    :cond_0
    iget-object v2, p0, Lcom/oppo/widget/OppoRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    const/4 v3, -0x1

    const/4 v4, 0x0

    #calls: Lcom/oppo/widget/OppoRecipientEditTextView;->constructChipSpan(Lcom/oppo/widget/OppoRecipientEntry;IZ)Lcom/oppo/widget/OppoRecipientChip;
    invoke-static {v2, p1, v3, v4}, Lcom/oppo/widget/OppoRecipientEditTextView;->access$1900(Lcom/oppo/widget/OppoRecipientEditTextView;Lcom/oppo/widget/OppoRecipientEntry;IZ)Lcom/oppo/widget/OppoRecipientChip;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 2813
    :catch_0
    move-exception v0

    .line 2814
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "OppoRecipientEditTextView"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2805
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoRecipientEditTextView$RecipientReplacementTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 13
    .parameter "params"

    .prologue
    const/4 v12, 0x0

    .line 2821
    iget-object v9, p0, Lcom/oppo/widget/OppoRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    #getter for: Lcom/oppo/widget/OppoRecipientEditTextView;->mIndividualReplacements:Lcom/oppo/widget/OppoRecipientEditTextView$IndividualReplacementTask;
    invoke-static {v9}, Lcom/oppo/widget/OppoRecipientEditTextView;->access$2000(Lcom/oppo/widget/OppoRecipientEditTextView;)Lcom/oppo/widget/OppoRecipientEditTextView$IndividualReplacementTask;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 2822
    iget-object v9, p0, Lcom/oppo/widget/OppoRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    #getter for: Lcom/oppo/widget/OppoRecipientEditTextView;->mIndividualReplacements:Lcom/oppo/widget/OppoRecipientEditTextView$IndividualReplacementTask;
    invoke-static {v9}, Lcom/oppo/widget/OppoRecipientEditTextView;->access$2000(Lcom/oppo/widget/OppoRecipientEditTextView;)Lcom/oppo/widget/OppoRecipientEditTextView$IndividualReplacementTask;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 2827
    :cond_0
    iget-object v9, p0, Lcom/oppo/widget/OppoRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    #getter for: Lcom/oppo/widget/OppoRecipientEditTextView;->mOppoRecipientAlternatesAdapter:Lcom/oppo/widget/OppoRecipientAlternatesAdapter;
    invoke-static {v9}, Lcom/oppo/widget/OppoRecipientEditTextView;->access$2100(Lcom/oppo/widget/OppoRecipientEditTextView;)Lcom/oppo/widget/OppoRecipientAlternatesAdapter;

    move-result-object v9

    if-nez v9, :cond_2

    .line 2899
    :cond_1
    :goto_0
    return-object v12

    .line 2831
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2832
    .local v6, originalRecipients:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/oppo/widget/OppoRecipientChip;>;"
    iget-object v9, p0, Lcom/oppo/widget/OppoRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    invoke-virtual {v9}, Lcom/oppo/widget/OppoRecipientEditTextView;->getSortedRecipients()[Lcom/oppo/widget/OppoRecipientChip;

    move-result-object v3

    .line 2833
    .local v3, existingChips:[Lcom/oppo/widget/OppoRecipientChip;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v9, v3

    if-ge v4, v9, :cond_3

    .line 2834
    aget-object v9, v3, v4

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2833
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2836
    :cond_3
    iget-object v9, p0, Lcom/oppo/widget/OppoRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    #getter for: Lcom/oppo/widget/OppoRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/oppo/widget/OppoRecipientEditTextView;->access$2200(Lcom/oppo/widget/OppoRecipientEditTextView;)Ljava/util/ArrayList;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 2837
    iget-object v9, p0, Lcom/oppo/widget/OppoRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    #getter for: Lcom/oppo/widget/OppoRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/oppo/widget/OppoRecipientEditTextView;->access$2200(Lcom/oppo/widget/OppoRecipientEditTextView;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2850
    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v0, v9, [Ljava/lang/String;

    .line 2851
    .local v0, addresses:[Ljava/lang/String;
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_5

    .line 2852
    iget-object v10, p0, Lcom/oppo/widget/OppoRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oppo/widget/OppoRecipientChip;

    invoke-virtual {v9}, Lcom/oppo/widget/OppoRecipientChip;->getEntry()Lcom/oppo/widget/OppoRecipientEntry;

    move-result-object v9

    invoke-virtual {v10, v9}, Lcom/oppo/widget/OppoRecipientEditTextView;->createAddressText(Lcom/oppo/widget/OppoRecipientEntry;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v4

    .line 2851
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2854
    :cond_5
    iget-object v9, p0, Lcom/oppo/widget/OppoRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    #getter for: Lcom/oppo/widget/OppoRecipientEditTextView;->mOppoRecipientAlternatesAdapter:Lcom/oppo/widget/OppoRecipientAlternatesAdapter;
    invoke-static {v9}, Lcom/oppo/widget/OppoRecipientEditTextView;->access$2100(Lcom/oppo/widget/OppoRecipientEditTextView;)Lcom/oppo/widget/OppoRecipientAlternatesAdapter;

    move-result-object v9

    iget-object v10, p0, Lcom/oppo/widget/OppoRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v10, v0}, Lcom/oppo/widget/OppoRecipientAlternatesAdapter;->getMatchingRecipients(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 2856
    .local v1, entries:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/oppo/widget/OppoRecipientEntry;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2857
    .local v7, replacements:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/oppo/widget/OppoRecipientChip;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oppo/widget/OppoRecipientChip;

    .line 2858
    .local v8, temp:Lcom/oppo/widget/OppoRecipientChip;
    const/4 v2, 0x0

    .line 2859
    .local v2, entry:Lcom/oppo/widget/OppoRecipientEntry;
    invoke-virtual {v8}, Lcom/oppo/widget/OppoRecipientChip;->getEntry()Lcom/oppo/widget/OppoRecipientEntry;

    move-result-object v9

    invoke-virtual {v9}, Lcom/oppo/widget/OppoRecipientEntry;->getContactId()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/oppo/widget/OppoRecipientEntry;->isCreatedRecipient(J)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/oppo/widget/OppoRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    invoke-virtual {v9}, Lcom/oppo/widget/OppoRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v9

    invoke-interface {v9, v8}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_6

    .line 2862
    iget-object v10, p0, Lcom/oppo/widget/OppoRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    iget-object v9, p0, Lcom/oppo/widget/OppoRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    invoke-virtual {v8}, Lcom/oppo/widget/OppoRecipientChip;->getEntry()Lcom/oppo/widget/OppoRecipientEntry;

    move-result-object v11

    invoke-virtual {v11}, Lcom/oppo/widget/OppoRecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/oppo/widget/OppoRecipientEditTextView;->tokenizeAddress(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v9, v11}, Lcom/oppo/widget/OppoRecipientEditTextView;->access$2300(Lcom/oppo/widget/OppoRecipientEditTextView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oppo/widget/OppoRecipientEntry;

    #calls: Lcom/oppo/widget/OppoRecipientEditTextView;->createValidatedEntry(Lcom/oppo/widget/OppoRecipientEntry;)Lcom/oppo/widget/OppoRecipientEntry;
    invoke-static {v10, v9}, Lcom/oppo/widget/OppoRecipientEditTextView;->access$2400(Lcom/oppo/widget/OppoRecipientEditTextView;Lcom/oppo/widget/OppoRecipientEntry;)Lcom/oppo/widget/OppoRecipientEntry;

    move-result-object v2

    .line 2865
    :cond_6
    if-eqz v2, :cond_7

    .line 2866
    invoke-direct {p0, v2}, Lcom/oppo/widget/OppoRecipientEditTextView$RecipientReplacementTask;->createFreeChip(Lcom/oppo/widget/OppoRecipientEntry;)Lcom/oppo/widget/OppoRecipientChip;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2868
    :cond_7
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2871
    .end local v2           #entry:Lcom/oppo/widget/OppoRecipientEntry;
    .end local v8           #temp:Lcom/oppo/widget/OppoRecipientChip;
    :cond_8
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_1

    .line 2872
    iget-object v9, p0, Lcom/oppo/widget/OppoRecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    #getter for: Lcom/oppo/widget/OppoRecipientEditTextView;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/oppo/widget/OppoRecipientEditTextView;->access$500(Lcom/oppo/widget/OppoRecipientEditTextView;)Landroid/os/Handler;

    move-result-object v9

    new-instance v10, Lcom/oppo/widget/OppoRecipientEditTextView$RecipientReplacementTask$1;

    invoke-direct {v10, p0, v6, v7}, Lcom/oppo/widget/OppoRecipientEditTextView$RecipientReplacementTask$1;-><init>(Lcom/oppo/widget/OppoRecipientEditTextView$RecipientReplacementTask;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method
