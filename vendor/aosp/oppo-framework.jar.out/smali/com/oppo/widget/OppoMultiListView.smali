.class public Lcom/oppo/widget/OppoMultiListView;
.super Lcom/oppo/widget/OppoListView;
.source "OppoMultiListView.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final FIRST_VIEW:I = 0x1

.field public static final LAST_VIEW:I = 0x3

.field public static final MID_VIEW:I = 0x2

.field public static final NONE_BACKGROUND:I = 0x0

.field public static final ONLY_ONE_CHILD_VIEW:I = 0x4

.field private static final TAG:Ljava/lang/String; = "OppoMultiListView"


# instance fields
.field private mBackgroundBottom:Landroid/graphics/drawable/Drawable;

.field private mBackgroundMiddle:Landroid/graphics/drawable/Drawable;

.field private mBackgroundNone:Landroid/graphics/drawable/Drawable;

.field private mBackgroundOnlyOne:Landroid/graphics/drawable/Drawable;

.field private mBackgroundTop:Landroid/graphics/drawable/Drawable;

.field private mSavedSelector:Landroid/graphics/drawable/Drawable;

.field private mSelectorBottom:Landroid/graphics/drawable/Drawable;

.field private mSelectorMiddle:Landroid/graphics/drawable/Drawable;

.field private mSelectorOnlyOne:Landroid/graphics/drawable/Drawable;

.field private mSelectorTop:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoMultiListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 82
    const v0, 0xc010402

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoMultiListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/widget/OppoListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    iput-object v2, p0, Lcom/oppo/widget/OppoMultiListView;->mBackgroundTop:Landroid/graphics/drawable/Drawable;

    .line 67
    iput-object v2, p0, Lcom/oppo/widget/OppoMultiListView;->mBackgroundMiddle:Landroid/graphics/drawable/Drawable;

    .line 68
    iput-object v2, p0, Lcom/oppo/widget/OppoMultiListView;->mBackgroundBottom:Landroid/graphics/drawable/Drawable;

    .line 69
    iput-object v2, p0, Lcom/oppo/widget/OppoMultiListView;->mBackgroundOnlyOne:Landroid/graphics/drawable/Drawable;

    .line 70
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v1, p0, Lcom/oppo/widget/OppoMultiListView;->mBackgroundNone:Landroid/graphics/drawable/Drawable;

    .line 71
    iput-object v2, p0, Lcom/oppo/widget/OppoMultiListView;->mSelectorTop:Landroid/graphics/drawable/Drawable;

    .line 72
    iput-object v2, p0, Lcom/oppo/widget/OppoMultiListView;->mSelectorMiddle:Landroid/graphics/drawable/Drawable;

    .line 73
    iput-object v2, p0, Lcom/oppo/widget/OppoMultiListView;->mSelectorBottom:Landroid/graphics/drawable/Drawable;

    .line 74
    iput-object v2, p0, Lcom/oppo/widget/OppoMultiListView;->mSelectorOnlyOne:Landroid/graphics/drawable/Drawable;

    .line 75
    iput-object v2, p0, Lcom/oppo/widget/OppoMultiListView;->mSavedSelector:Landroid/graphics/drawable/Drawable;

    .line 88
    sget-object v1, Loppo/R$styleable;->OppoMultiListView:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 91
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoMultiListView;->mBackgroundTop:Landroid/graphics/drawable/Drawable;

    .line 92
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoMultiListView;->mBackgroundMiddle:Landroid/graphics/drawable/Drawable;

    .line 93
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoMultiListView;->mBackgroundBottom:Landroid/graphics/drawable/Drawable;

    .line 94
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoMultiListView;->mBackgroundOnlyOne:Landroid/graphics/drawable/Drawable;

    .line 95
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoMultiListView;->mSelectorTop:Landroid/graphics/drawable/Drawable;

    .line 96
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoMultiListView;->mSelectorMiddle:Landroid/graphics/drawable/Drawable;

    .line 97
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoMultiListView;->mSelectorBottom:Landroid/graphics/drawable/Drawable;

    .line 98
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoMultiListView;->mSelectorOnlyOne:Landroid/graphics/drawable/Drawable;

    .line 100
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 102
    invoke-direct {p0}, Lcom/oppo/widget/OppoMultiListView;->setNoDivider()V

    .line 103
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    .line 104
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 105
    return-void
.end method

.method private getPositionInfo(Landroid/view/View;)I
    .locals 4
    .parameter "view"

    .prologue
    .line 138
    if-eqz p1, :cond_0

    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 140
    .local v1, object:Ljava/lang/Object;
    instance-of v3, v1, Landroid/content/ContentValues;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 141
    check-cast v0, Landroid/content/ContentValues;

    .line 142
    .local v0, contentvalues:Landroid/content/ContentValues;
    invoke-static {v0}, Lcom/oppo/widget/OppoMultiListView;->getPositionInfoByContentValues(Landroid/content/ContentValues;)I

    move-result v2

    .line 143
    .local v2, tag:I
    invoke-direct {p0, v2}, Lcom/oppo/widget/OppoMultiListView;->isValidTag(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 148
    .end local v0           #contentvalues:Landroid/content/ContentValues;
    .end local v1           #object:Ljava/lang/Object;
    .end local v2           #tag:I
    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static getPositionInfoByContentValues(Landroid/content/ContentValues;)I
    .locals 3
    .parameter "contentValues"

    .prologue
    .line 123
    if-eqz p0, :cond_0

    .line 124
    const-string v2, "positionInfo"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 125
    .local v1, object:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 126
    check-cast v0, Ljava/lang/Integer;

    .line 127
    .local v0, integer:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 130
    .end local v0           #integer:Ljava/lang/Integer;
    .end local v1           #object:Ljava/lang/Object;
    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private isValidTag(I)Z
    .locals 2
    .parameter "tag"

    .prologue
    const/4 v0, 0x1

    .line 216
    if-eq v0, p1, :cond_0

    const/4 v1, 0x2

    if-eq v1, p1, :cond_0

    const/4 v1, 0x3

    if-eq v1, p1, :cond_0

    const/4 v1, 0x4

    if-eq v1, p1, :cond_0

    if-nez p1, :cond_1

    .line 220
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setBackgroundByViewTag(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoMultiListView;->getPositionInfo(Landroid/view/View;)I

    move-result v1

    .line 200
    .local v1, tag:I
    invoke-direct {p0, v1}, Lcom/oppo/widget/OppoMultiListView;->isValidTag(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 201
    const/4 v0, 0x0

    .line 202
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x1

    if-ne v2, v1, :cond_2

    .line 203
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiListView;->mBackgroundTop:Landroid/graphics/drawable/Drawable;

    .line 211
    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 213
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void

    .line 204
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    :cond_2
    const/4 v2, 0x2

    if-ne v2, v1, :cond_3

    .line 205
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiListView;->mBackgroundMiddle:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 206
    :cond_3
    const/4 v2, 0x3

    if-ne v2, v1, :cond_4

    .line 207
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiListView;->mBackgroundBottom:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 208
    :cond_4
    const/4 v2, 0x4

    if-ne v2, v1, :cond_0

    .line 209
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiListView;->mBackgroundOnlyOne:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private setNoDivider()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 112
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 113
    return-void
.end method


# virtual methods
.method protected positionSelector(ILandroid/view/View;)V
    .locals 4
    .parameter "position"
    .parameter "sel"

    .prologue
    .line 156
    if-eqz p2, :cond_2

    .line 157
    iget-object v2, p0, Lcom/oppo/widget/OppoMultiListView;->mSavedSelector:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 158
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/widget/OppoMultiListView;->mSavedSelector:Landroid/graphics/drawable/Drawable;

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiListView;->mSavedSelector:Landroid/graphics/drawable/Drawable;

    .line 161
    .local v0, selector:Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, p2}, Lcom/oppo/widget/OppoMultiListView;->getPositionInfo(Landroid/view/View;)I

    move-result v1

    .line 162
    .local v1, tag:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 163
    packed-switch v1, :pswitch_data_0

    .line 182
    :goto_0
    if-nez v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiListView;->mSavedSelector:Landroid/graphics/drawable/Drawable;

    .line 185
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 192
    .end local v0           #selector:Landroid/graphics/drawable/Drawable;
    .end local v1           #tag:I
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 193
    return-void

    .line 165
    .restart local v0       #selector:Landroid/graphics/drawable/Drawable;
    .restart local v1       #tag:I
    :pswitch_0
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiListView;->mSelectorTop:Landroid/graphics/drawable/Drawable;

    .line 166
    goto :goto_0

    .line 168
    :pswitch_1
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiListView;->mSelectorBottom:Landroid/graphics/drawable/Drawable;

    .line 169
    goto :goto_0

    .line 171
    :pswitch_2
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiListView;->mSelectorMiddle:Landroid/graphics/drawable/Drawable;

    .line 172
    goto :goto_0

    .line 174
    :pswitch_3
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiListView;->mSelectorOnlyOne:Landroid/graphics/drawable/Drawable;

    .line 175
    goto :goto_0

    .line 177
    :pswitch_4
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiListView;->mBackgroundNone:Landroid/graphics/drawable/Drawable;

    .line 178
    goto :goto_0

    .line 187
    :cond_3
    iget-object v2, p0, Lcom/oppo/widget/OppoMultiListView;->mSavedSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 188
    iget-object v2, p0, Lcom/oppo/widget/OppoMultiListView;->mSavedSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
