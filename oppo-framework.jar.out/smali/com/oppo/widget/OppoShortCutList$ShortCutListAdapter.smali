.class Lcom/oppo/widget/OppoShortCutList$ShortCutListAdapter;
.super Landroid/widget/BaseAdapter;
.source "OppoShortCutList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoShortCutList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShortCutListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoShortCutList$ShortCutListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/oppo/widget/OppoShortCutList;


# direct methods
.method public constructor <init>(Lcom/oppo/widget/OppoShortCutList;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 539
    iput-object p1, p0, Lcom/oppo/widget/OppoShortCutList$ShortCutListAdapter;->this$0:Lcom/oppo/widget/OppoShortCutList;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 541
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoShortCutList$ShortCutListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 542
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList$ShortCutListAdapter;->this$0:Lcom/oppo/widget/OppoShortCutList;

    #getter for: Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/oppo/widget/OppoShortCutList;->access$100(Lcom/oppo/widget/OppoShortCutList;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 546
    const/4 v0, 0x0

    .line 548
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList$ShortCutListAdapter;->this$0:Lcom/oppo/widget/OppoShortCutList;

    #getter for: Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/oppo/widget/OppoShortCutList;->access$100(Lcom/oppo/widget/OppoShortCutList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 552
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList$ShortCutListAdapter;->this$0:Lcom/oppo/widget/OppoShortCutList;

    #getter for: Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/oppo/widget/OppoShortCutList;->access$100(Lcom/oppo/widget/OppoShortCutList;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 553
    const/4 v0, 0x0

    .line 555
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutList$ShortCutListAdapter;->this$0:Lcom/oppo/widget/OppoShortCutList;

    #getter for: Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/oppo/widget/OppoShortCutList;->access$100(Lcom/oppo/widget/OppoShortCutList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 559
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v10, 0xc020435

    const v9, 0xc020434

    const/4 v8, 0x1

    .line 568
    if-nez p2, :cond_0

    .line 569
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutList$ShortCutListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0xc09040d

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 573
    new-instance v3, Lcom/oppo/widget/OppoShortCutList$ShortCutListAdapter$ViewHolder;

    invoke-direct {v3, p0}, Lcom/oppo/widget/OppoShortCutList$ShortCutListAdapter$ViewHolder;-><init>(Lcom/oppo/widget/OppoShortCutList$ShortCutListAdapter;)V

    .line 574
    .local v3, holder:Lcom/oppo/widget/OppoShortCutList$ShortCutListAdapter$ViewHolder;
    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/oppo/widget/OppoShortCutList$ShortCutListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 575
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v3, Lcom/oppo/widget/OppoShortCutList$ShortCutListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 588
    :goto_0
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutList$ShortCutListAdapter;->this$0:Lcom/oppo/widget/OppoShortCutList;

    #getter for: Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/oppo/widget/OppoShortCutList;->access$100(Lcom/oppo/widget/OppoShortCutList;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;

    iget v5, v5, Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;->itemId:I

    invoke-virtual {p2, v5}, Landroid/view/View;->setId(I)V

    .line 591
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutList$ShortCutListAdapter;->this$0:Lcom/oppo/widget/OppoShortCutList;

    #getter for: Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/oppo/widget/OppoShortCutList;->access$100(Lcom/oppo/widget/OppoShortCutList;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;

    iget-boolean v2, v5, Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;->enabled:Z

    .line 592
    .local v2, enable:Z
    invoke-virtual {p2, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 593
    invoke-virtual {p2, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 596
    iget-object v6, v3, Lcom/oppo/widget/OppoShortCutList$ShortCutListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutList$ShortCutListAdapter;->this$0:Lcom/oppo/widget/OppoShortCutList;

    #getter for: Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/oppo/widget/OppoShortCutList;->access$100(Lcom/oppo/widget/OppoShortCutList;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;

    iget-object v5, v5, Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;->lable:Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 597
    iget-object v5, v3, Lcom/oppo/widget/OppoShortCutList$ShortCutListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 598
    iget-object v5, v3, Lcom/oppo/widget/OppoShortCutList$ShortCutListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 600
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutList$ShortCutListAdapter;->this$0:Lcom/oppo/widget/OppoShortCutList;

    #getter for: Lcom/oppo/widget/OppoShortCutList;->mShortCutItemList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/oppo/widget/OppoShortCutList;->access$100(Lcom/oppo/widget/OppoShortCutList;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;

    iget v4, v5, Lcom/oppo/widget/OppoShortCutList$OppoShortCutItem;->drawableRes:I

    .line 601
    .local v4, iconRes:I
    if-eqz v4, :cond_1

    .line 602
    iget-object v5, v3, Lcom/oppo/widget/OppoShortCutList$ShortCutListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 603
    iget-object v5, v3, Lcom/oppo/widget/OppoShortCutList$ShortCutListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 604
    iget-object v5, v3, Lcom/oppo/widget/OppoShortCutList$ShortCutListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 605
    iget-object v5, v3, Lcom/oppo/widget/OppoShortCutList$ShortCutListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 611
    :goto_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 612
    .local v1, contentValues:Landroid/content/ContentValues;
    const/4 v0, -0x1

    .line 614
    .local v0, background:I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoShortCutList$ShortCutListAdapter;->getCount()I

    move-result v5

    if-ne v5, v8, :cond_2

    .line 615
    const/4 v0, 0x4

    .line 625
    :goto_2
    const-string v5, "positionInfo"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 626
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 628
    return-object p2

    .line 582
    .end local v0           #background:I
    .end local v1           #contentValues:Landroid/content/ContentValues;
    .end local v2           #enable:Z
    .end local v3           #holder:Lcom/oppo/widget/OppoShortCutList$ShortCutListAdapter$ViewHolder;
    .end local v4           #iconRes:I
    :cond_0
    new-instance v3, Lcom/oppo/widget/OppoShortCutList$ShortCutListAdapter$ViewHolder;

    invoke-direct {v3, p0}, Lcom/oppo/widget/OppoShortCutList$ShortCutListAdapter$ViewHolder;-><init>(Lcom/oppo/widget/OppoShortCutList$ShortCutListAdapter;)V

    .line 583
    .restart local v3       #holder:Lcom/oppo/widget/OppoShortCutList$ShortCutListAdapter$ViewHolder;
    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/oppo/widget/OppoShortCutList$ShortCutListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 584
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v3, Lcom/oppo/widget/OppoShortCutList$ShortCutListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    goto/16 :goto_0

    .line 607
    .restart local v2       #enable:Z
    .restart local v4       #iconRes:I
    :cond_1
    iget-object v5, v3, Lcom/oppo/widget/OppoShortCutList$ShortCutListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 616
    .restart local v0       #background:I
    .restart local v1       #contentValues:Landroid/content/ContentValues;
    :cond_2
    if-nez p1, :cond_3

    .line 617
    const/4 v0, 0x1

    goto :goto_2

    .line 618
    :cond_3
    invoke-virtual {p0}, Lcom/oppo/widget/OppoShortCutList$ShortCutListAdapter;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne p1, v5, :cond_4

    .line 619
    const/4 v0, 0x3

    goto :goto_2

    .line 621
    :cond_4
    const/4 v0, 0x2

    goto :goto_2
.end method
