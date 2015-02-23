.class Lcom/oppo/preference/OppoPreferenceActivity$HeaderAdapter;
.super Landroid/widget/ArrayAdapter;
.source "OppoPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/preference/OppoPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/preference/OppoPreferenceActivity$HeaderAdapter$HeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/oppo/preference/OppoPreferenceActivity$Header;",
        ">;"
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/preference/OppoPreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 271
    .local p2, objects:Ljava/util/List;,"Ljava/util/List<Lcom/oppo/preference/OppoPreferenceActivity$Header;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 272
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/oppo/preference/OppoPreferenceActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 273
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v9, 0x0

    .line 280
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/preference/OppoPreferenceActivity$Header;

    .line 281
    .local v2, header:Lcom/oppo/preference/OppoPreferenceActivity$Header;
    if-nez p2, :cond_4

    .line 282
    iget-object v7, p0, Lcom/oppo/preference/OppoPreferenceActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v8, v2, Lcom/oppo/preference/OppoPreferenceActivity$Header;->layoutResid:I

    invoke-virtual {v7, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 287
    .local v6, view:Landroid/view/View;
    :goto_0
    new-instance v3, Lcom/oppo/preference/OppoPreferenceActivity$HeaderAdapter$HeaderViewHolder;

    const/4 v7, 0x0

    invoke-direct {v3, v7}, Lcom/oppo/preference/OppoPreferenceActivity$HeaderAdapter$HeaderViewHolder;-><init>(Lcom/oppo/preference/OppoPreferenceActivity$1;)V

    .line 288
    .local v3, holder:Lcom/oppo/preference/OppoPreferenceActivity$HeaderAdapter$HeaderViewHolder;
    const v7, 0xc020434

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v3, Lcom/oppo/preference/OppoPreferenceActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 289
    const v7, 0xc020006

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v3, Lcom/oppo/preference/OppoPreferenceActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 290
    const v7, 0xc020007

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v3, Lcom/oppo/preference/OppoPreferenceActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 294
    iget-object v7, v3, Lcom/oppo/preference/OppoPreferenceActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    .line 295
    iget-object v7, v3, Lcom/oppo/preference/OppoPreferenceActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget v8, v2, Lcom/oppo/preference/OppoPreferenceActivity$Header;->iconRes:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 297
    :cond_0
    iget-object v7, v3, Lcom/oppo/preference/OppoPreferenceActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    if-eqz v7, :cond_1

    .line 298
    iget-object v7, v3, Lcom/oppo/preference/OppoPreferenceActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/oppo/preference/OppoPreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/oppo/preference/OppoPreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 301
    .local v4, summary:Ljava/lang/CharSequence;
    iget-object v7, v3, Lcom/oppo/preference/OppoPreferenceActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    if-eqz v7, :cond_2

    .line 302
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 303
    iget-object v7, v3, Lcom/oppo/preference/OppoPreferenceActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 304
    iget-object v7, v3, Lcom/oppo/preference/OppoPreferenceActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    :cond_2
    :goto_1
    invoke-virtual {v2}, Lcom/oppo/preference/OppoPreferenceActivity$Header;->getOverlap()I

    move-result v5

    .line 310
    .local v5, type:I
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 311
    .local v1, contentValues:Landroid/content/ContentValues;
    const/4 v0, -0x1

    .line 312
    .local v0, background:I
    if-nez v5, :cond_6

    .line 313
    const/4 v0, 0x0

    .line 323
    :cond_3
    :goto_2
    const-string v7, "positionInfo"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 324
    invoke-virtual {v6, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 326
    return-object v6

    .line 284
    .end local v0           #background:I
    .end local v1           #contentValues:Landroid/content/ContentValues;
    .end local v3           #holder:Lcom/oppo/preference/OppoPreferenceActivity$HeaderAdapter$HeaderViewHolder;
    .end local v4           #summary:Ljava/lang/CharSequence;
    .end local v5           #type:I
    .end local v6           #view:Landroid/view/View;
    :cond_4
    move-object v6, p2

    .restart local v6       #view:Landroid/view/View;
    goto/16 :goto_0

    .line 306
    .restart local v3       #holder:Lcom/oppo/preference/OppoPreferenceActivity$HeaderAdapter$HeaderViewHolder;
    .restart local v4       #summary:Ljava/lang/CharSequence;
    :cond_5
    iget-object v7, v3, Lcom/oppo/preference/OppoPreferenceActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 314
    .restart local v0       #background:I
    .restart local v1       #contentValues:Landroid/content/ContentValues;
    .restart local v5       #type:I
    :cond_6
    const/4 v7, 0x1

    if-ne v5, v7, :cond_7

    .line 315
    const/4 v0, 0x1

    goto :goto_2

    .line 316
    :cond_7
    const/4 v7, 0x2

    if-ne v5, v7, :cond_8

    .line 317
    const/4 v0, 0x2

    goto :goto_2

    .line 318
    :cond_8
    const/4 v7, 0x3

    if-ne v5, v7, :cond_9

    .line 319
    const/4 v0, 0x3

    goto :goto_2

    .line 320
    :cond_9
    const/4 v7, 0x4

    if-ne v5, v7, :cond_3

    .line 321
    const/4 v0, 0x4

    goto :goto_2
.end method
