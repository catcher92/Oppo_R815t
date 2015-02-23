.class public Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;
.super Landroid/widget/BaseAdapter;
.source "OppoOptionMenuBarGalleryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$GalleryHolder;,
        Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$OnGalleryItemClickListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DISABLE_ALPHA:F = 0.4f

.field private static final MAX_NUM_ITEM_PER_ROW:I = 0x4

.field private static final TAG:Ljava/lang/String; = "GalleryAdapter"


# instance fields
.field private final LAYOUT_PARAMS:Landroid/widget/Gallery$LayoutParams;

.field private mContext:Landroid/content/Context;

.field private mGalleryItemClickListener:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$OnGalleryItemClickListener;

.field private mGalleryItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/widget/OppoMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mIconHeight:I

.field private mIconWidth:I

.field private mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 61
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 46
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->LAYOUT_PARAMS:Landroid/widget/Gallery$LayoutParams;

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->mGalleryItemClickListener:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$OnGalleryItemClickListener;

    .line 53
    iput v2, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->mIconHeight:I

    .line 54
    iput v2, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->mIconWidth:I

    .line 62
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 63
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->mContext:Landroid/content/Context;

    .line 64
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc050429

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->mIconHeight:I

    .line 66
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc05042a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->mIconWidth:I

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;)Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$OnGalleryItemClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->mGalleryItemClickListener:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$OnGalleryItemClickListener;

    return-object v0
.end method

.method private setItemViewOnClick(Landroid/widget/TextView;I)V
    .locals 13
    .parameter "elementItem"
    .parameter "position"

    .prologue
    const/4 v12, 0x0

    const/4 v10, 0x0

    .line 157
    iget-object v9, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->mGalleryItems:Ljava/util/List;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->mGalleryItems:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lt p2, v9, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    if-eqz p1, :cond_0

    .line 169
    iget-object v9, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->mGalleryItems:Ljava/util/List;

    invoke-interface {v9, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oppo/widget/OppoMenuItem;

    .line 171
    .local v4, galleryItem:Lcom/oppo/widget/OppoMenuItem;
    const/4 v6, 0x0

    .line 172
    .local v6, itemIcon:Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x0

    .line 173
    .local v7, itemTitle:Ljava/lang/String;
    invoke-interface {v4}, Lcom/oppo/widget/OppoMenuItem;->isEnabled()Z

    move-result v3

    .line 174
    .local v3, enabled:Z
    invoke-interface {v4}, Lcom/oppo/widget/OppoMenuItem;->isVisible()Z

    move-result v5

    .line 176
    .local v5, isVisible:Z
    if-eqz v5, :cond_4

    move v8, v10

    .line 179
    .local v8, visibility:I
    :goto_1
    :try_start_0
    invoke-interface {v4}, Lcom/oppo/widget/OppoMenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    .line 181
    invoke-interface {v4}, Lcom/oppo/widget/OppoMenuItem;->getIcon()Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 186
    :goto_2
    if-eqz v7, :cond_2

    .line 187
    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    :cond_2
    if-eqz v6, :cond_3

    .line 191
    iget v9, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->mIconWidth:I

    iget v11, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->mIconHeight:I

    invoke-virtual {v6, v10, v10, v9, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 192
    invoke-virtual {p1, v12, v6, v12, v12}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 196
    :cond_3
    invoke-virtual {p1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 197
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 198
    if-eqz v3, :cond_5

    .line 199
    const/high16 v9, 0x3f80

    invoke-virtual {p1, v9}, Landroid/view/View;->setAlpha(F)V

    .line 204
    :goto_3
    new-instance v1, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$1;

    invoke-direct {v1, p0, v4, p2}, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$1;-><init>(Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;Lcom/oppo/widget/OppoMenuItem;I)V

    .line 214
    .local v1, clickListener:Landroid/view/View$OnClickListener;
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 176
    .end local v1           #clickListener:Landroid/view/View$OnClickListener;
    .end local v8           #visibility:I
    :cond_4
    const/16 v8, 0x8

    goto :goto_1

    .line 182
    .restart local v8       #visibility:I
    :catch_0
    move-exception v2

    .line 183
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 201
    .end local v2           #e:Ljava/lang/Exception;
    :cond_5
    const v9, 0x3ecccccd

    invoke-virtual {p1, v9}, Landroid/view/View;->setAlpha(F)V

    goto :goto_3
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 82
    .local v0, count:I
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->mGalleryItems:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 83
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->mGalleryItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/lit8 v1, v2, 0x4

    .line 84
    .local v1, remainder:I
    if-eqz v1, :cond_1

    .line 85
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->mGalleryItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    add-int/lit8 v0, v2, 0x1

    .line 92
    .end local v1           #remainder:I
    :cond_0
    :goto_0
    return v0

    .line 87
    .restart local v1       #remainder:I
    :cond_1
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->mGalleryItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    div-int/lit8 v0, v2, 0x4

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->mGalleryItems:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->mGalleryItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->mGalleryItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 101
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 105
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x4

    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, elementItem:Landroid/widget/TextView;
    if-nez p2, :cond_0

    .line 121
    iget-object v5, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v6, 0xc09043c

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 123
    iget-object v5, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->LAYOUT_PARAMS:Landroid/widget/Gallery$LayoutParams;

    invoke-virtual {p2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    :cond_0
    new-array v3, v8, [I

    fill-array-data v3, :array_0

    .line 131
    .local v3, item_array:[I
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$GalleryHolder;

    .line 132
    .local v1, holder:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$GalleryHolder;
    if-nez v1, :cond_3

    .line 133
    new-instance v1, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$GalleryHolder;

    .end local v1           #holder:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$GalleryHolder;
    invoke-direct {v1, p0}, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$GalleryHolder;-><init>(Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;)V

    .line 135
    .restart local v1       #holder:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$GalleryHolder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v8, :cond_1

    .line 136
    aget v5, v3, v2

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object v0, v5

    check-cast v0, Landroid/widget/TextView;

    .line 137
    mul-int/lit8 v5, p1, 0x4

    add-int v4, v5, v2

    .line 139
    .local v4, item_pos:I
    invoke-direct {p0, v0, v4}, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->setItemViewOnClick(Landroid/widget/TextView;I)V

    .line 141
    iget-object v5, v1, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$GalleryHolder;->textViews:[Landroid/widget/TextView;

    aput-object v0, v5, v2

    .line 135
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 144
    .end local v4           #item_pos:I
    :cond_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 153
    :cond_2
    return-object p2

    .line 146
    .end local v2           #i:I
    :cond_3
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1
    if-ge v2, v8, :cond_2

    .line 147
    iget-object v5, v1, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$GalleryHolder;->textViews:[Landroid/widget/TextView;

    aget-object v0, v5, v2

    .line 148
    mul-int/lit8 v5, p1, 0x4

    add-int v4, v5, v2

    .line 149
    .restart local v4       #item_pos:I
    invoke-direct {p0, v0, v4}, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->setItemViewOnClick(Landroid/widget/TextView;I)V

    .line 146
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 125
    :array_0
    .array-data 0x4
        0x62t 0x4t 0x2t 0xct
        0x63t 0x4t 0x2t 0xct
        0x64t 0x4t 0x2t 0xct
        0x65t 0x4t 0x2t 0xct
    .end array-data
.end method

.method public setGalleryItems(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/widget/OppoMenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/oppo/widget/OppoMenuItem;>;"
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->mGalleryItems:Ljava/util/List;

    .line 76
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 77
    return-void
.end method

.method public setOnGalleryItemClickListener(Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$OnGalleryItemClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->mGalleryItemClickListener:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$OnGalleryItemClickListener;

    .line 72
    return-void
.end method
