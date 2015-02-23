.class Lcom/oppo/widget/OppoShortCutItem;
.super Ljava/lang/Object;
.source "OppoShortCutItem.java"


# static fields
.field private static drawablePadding:I

.field private static mDefaultTextDisableColor:I

.field private static mDefaultTextHlColor:I


# instance fields
.field private TAG:Ljava/lang/String;

.field private enable_state:Z

.field public mBgBottom:I

.field public mBgLeft:I

.field public mBgRight:I

.field public mBgTop:I

.field public mBottom:I

.field private mDefaultText:Ljava/lang/CharSequence;

.field private mDefaultTextColor:I

.field public mItemBg:Landroid/graphics/drawable/Drawable;

.field public mItemDisableBg:Landroid/graphics/drawable/Drawable;

.field public mItemDisableHlBg:Landroid/graphics/drawable/Drawable;

.field public mItemDisableIcon:Landroid/graphics/drawable/Drawable;

.field public mItemHlBg:Landroid/graphics/drawable/Drawable;

.field public mItemHlIcon:Landroid/graphics/drawable/Drawable;

.field public mItemIcon:Landroid/graphics/drawable/Drawable;

.field public mItemId:I

.field public mItemLabel:Ljava/lang/String;

.field public mItemLabelColor:I

.field public mItemLabelDisableColor:I

.field public mItemLabelHlColor:I

.field public mItemLabelSize:I

.field public mItemTag:Ljava/lang/String;

.field public mLeft:I

.field public mRight:I

.field public mTop:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const/high16 v0, -0x100

    sput v0, Lcom/oppo/widget/OppoShortCutItem;->mDefaultTextHlColor:I

    .line 92
    const v0, -0x7f414142

    sput v0, Lcom/oppo/widget/OppoShortCutItem;->mDefaultTextDisableColor:I

    .line 102
    const/4 v0, 0x0

    sput v0, Lcom/oppo/widget/OppoShortCutItem;->drawablePadding:I

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "OppoShortCutItem"

    iput-object v0, p0, Lcom/oppo/widget/OppoShortCutItem;->TAG:Ljava/lang/String;

    .line 51
    iput v2, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemId:I

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoShortCutItem;->enable_state:Z

    .line 82
    iput v2, p0, Lcom/oppo/widget/OppoShortCutItem;->mDefaultTextColor:I

    .line 97
    iput-object v1, p0, Lcom/oppo/widget/OppoShortCutItem;->mDefaultText:Ljava/lang/CharSequence;

    .line 127
    iput v2, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemId:I

    .line 128
    iput-object v1, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemTag:Ljava/lang/String;

    .line 129
    iput-object v1, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemBg:Landroid/graphics/drawable/Drawable;

    .line 130
    iput-object v1, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemHlBg:Landroid/graphics/drawable/Drawable;

    .line 131
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutItem;->mDefaultText:Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemLabel:Ljava/lang/String;

    .line 132
    iput-object v1, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemIcon:Landroid/graphics/drawable/Drawable;

    .line 133
    iput-object v1, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemHlIcon:Landroid/graphics/drawable/Drawable;

    .line 134
    iget v0, p0, Lcom/oppo/widget/OppoShortCutItem;->mDefaultTextColor:I

    iput v0, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemLabelColor:I

    .line 135
    sget v0, Lcom/oppo/widget/OppoShortCutItem;->mDefaultTextHlColor:I

    iput v0, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemLabelHlColor:I

    .line 136
    sget v0, Lcom/oppo/widget/OppoShortCutItem;->mDefaultTextDisableColor:I

    iput v0, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemLabelDisableColor:I

    .line 137
    return-void
.end method

.method constructor <init>(I)V
    .locals 3
    .parameter "id"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "OppoShortCutItem"

    iput-object v0, p0, Lcom/oppo/widget/OppoShortCutItem;->TAG:Ljava/lang/String;

    .line 51
    iput v2, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemId:I

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoShortCutItem;->enable_state:Z

    .line 82
    iput v2, p0, Lcom/oppo/widget/OppoShortCutItem;->mDefaultTextColor:I

    .line 97
    iput-object v1, p0, Lcom/oppo/widget/OppoShortCutItem;->mDefaultText:Ljava/lang/CharSequence;

    .line 110
    iput p1, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemId:I

    .line 111
    iput-object v1, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemTag:Ljava/lang/String;

    .line 112
    iput-object v1, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemBg:Landroid/graphics/drawable/Drawable;

    .line 113
    iput-object v1, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemHlBg:Landroid/graphics/drawable/Drawable;

    .line 114
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutItem;->mDefaultText:Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemLabel:Ljava/lang/String;

    .line 115
    iput-object v1, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemIcon:Landroid/graphics/drawable/Drawable;

    .line 116
    iput-object v1, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemHlIcon:Landroid/graphics/drawable/Drawable;

    .line 117
    iget v0, p0, Lcom/oppo/widget/OppoShortCutItem;->mDefaultTextColor:I

    iput v0, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemLabelColor:I

    .line 118
    sget v0, Lcom/oppo/widget/OppoShortCutItem;->mDefaultTextHlColor:I

    iput v0, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemLabelHlColor:I

    .line 119
    return-void
.end method


# virtual methods
.method public bgHeight()I
    .locals 2

    .prologue
    .line 275
    iget v0, p0, Lcom/oppo/widget/OppoShortCutItem;->mBgBottom:I

    iget v1, p0, Lcom/oppo/widget/OppoShortCutItem;->mBgTop:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bgWidth()I
    .locals 2

    .prologue
    .line 266
    iget v0, p0, Lcom/oppo/widget/OppoShortCutItem;->mBgRight:I

    iget v1, p0, Lcom/oppo/widget/OppoShortCutItem;->mBgLeft:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getDrawablePadding()I
    .locals 1

    .prologue
    .line 407
    sget v0, Lcom/oppo/widget/OppoShortCutItem;->drawablePadding:I

    return v0
.end method

.method public getEnable()Z
    .locals 1

    .prologue
    .line 389
    iget-boolean v0, p0, Lcom/oppo/widget/OppoShortCutItem;->enable_state:Z

    return v0
.end method

.method public getItemBg()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemBgRect()Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 310
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/oppo/widget/OppoShortCutItem;->mBgLeft:I

    iget v2, p0, Lcom/oppo/widget/OppoShortCutItem;->mBgTop:I

    iget v3, p0, Lcom/oppo/widget/OppoShortCutItem;->mBgRight:I

    iget v4, p0, Lcom/oppo/widget/OppoShortCutItem;->mBgBottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getItemDisableBg()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemDisableBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemDisableHlBg()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemDisableHlBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemDisableIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemDisableIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemHlBg()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemHlBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemHlIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemHlIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemId()I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemId:I

    return v0
.end method

.method public getItemLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getItemLabelColor()I
    .locals 1

    .prologue
    .line 318
    iget v0, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemLabelColor:I

    return v0
.end method

.method public getItemLabelDisableColor()I
    .locals 1

    .prologue
    .line 349
    iget v0, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemLabelDisableColor:I

    return v0
.end method

.method public getItemLabelHlColor()I
    .locals 1

    .prologue
    .line 331
    iget v0, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemLabelHlColor:I

    return v0
.end method

.method public getItemLabelSize()I
    .locals 1

    .prologue
    .line 362
    iget v0, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemLabelSize:I

    return v0
.end method

.method public getItemRect()Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 286
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/oppo/widget/OppoShortCutItem;->mLeft:I

    iget v2, p0, Lcom/oppo/widget/OppoShortCutItem;->mTop:I

    iget v3, p0, Lcom/oppo/widget/OppoShortCutItem;->mRight:I

    iget v4, p0, Lcom/oppo/widget/OppoShortCutItem;->mBottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getItemText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemLabel:Ljava/lang/String;

    return-object v0
.end method

.method public height()I
    .locals 2

    .prologue
    .line 257
    iget v0, p0, Lcom/oppo/widget/OppoShortCutItem;->mBottom:I

    iget v1, p0, Lcom/oppo/widget/OppoShortCutItem;->mTop:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public setBgDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "ItemBg"
    .parameter "ItemHlBg"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemBg:Landroid/graphics/drawable/Drawable;

    .line 167
    iput-object p2, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemHlBg:Landroid/graphics/drawable/Drawable;

    .line 168
    return-void
.end method

.method public setDisableBgDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "ItemBg"
    .parameter "ItemHlBg"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemDisableBg:Landroid/graphics/drawable/Drawable;

    .line 178
    iput-object p2, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemDisableHlBg:Landroid/graphics/drawable/Drawable;

    .line 179
    return-void
.end method

.method public setDrawablePadding(I)V
    .locals 0
    .parameter "padding"

    .prologue
    .line 398
    sput p1, Lcom/oppo/widget/OppoShortCutItem;->drawablePadding:I

    .line 399
    return-void
.end method

.method public setEnable(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 380
    iput-boolean p1, p0, Lcom/oppo/widget/OppoShortCutItem;->enable_state:Z

    .line 381
    return-void
.end method

.method public setIconDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "IconBg"
    .parameter "IconHlBg"

    .prologue
    .line 188
    iput-object p1, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemBg:Landroid/graphics/drawable/Drawable;

    .line 189
    iput-object p2, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemHlBg:Landroid/graphics/drawable/Drawable;

    .line 190
    return-void
.end method

.method public setItemAttribute(ILjava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "label"

    .prologue
    .line 146
    iput p1, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemId:I

    .line 147
    iput-object p2, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemLabel:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setItemBgBounds(IIII)V
    .locals 0
    .parameter "Left"
    .parameter "Top"
    .parameter "Right"
    .parameter "Bottom"

    .prologue
    .line 298
    iput p1, p0, Lcom/oppo/widget/OppoShortCutItem;->mBgLeft:I

    .line 299
    iput p3, p0, Lcom/oppo/widget/OppoShortCutItem;->mBgRight:I

    .line 300
    iput p2, p0, Lcom/oppo/widget/OppoShortCutItem;->mBgTop:I

    .line 301
    iput p4, p0, Lcom/oppo/widget/OppoShortCutItem;->mBgBottom:I

    .line 302
    return-void
.end method

.method public setItemBounds(IIII)V
    .locals 0
    .parameter "Left"
    .parameter "Top"
    .parameter "Right"
    .parameter "Bottom"

    .prologue
    .line 279
    iput p1, p0, Lcom/oppo/widget/OppoShortCutItem;->mLeft:I

    .line 280
    iput p3, p0, Lcom/oppo/widget/OppoShortCutItem;->mRight:I

    .line 281
    iput p2, p0, Lcom/oppo/widget/OppoShortCutItem;->mTop:I

    .line 282
    iput p4, p0, Lcom/oppo/widget/OppoShortCutItem;->mBottom:I

    .line 283
    return-void
.end method

.method public setItemId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 156
    iput p1, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemId:I

    .line 157
    return-void
.end method

.method public setItemLabelColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 327
    iput p1, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemLabelColor:I

    .line 328
    return-void
.end method

.method public setItemLabelDisableColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 340
    iput p1, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemLabelDisableColor:I

    .line 341
    return-void
.end method

.method public setItemLabelHlColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 358
    iput p1, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemLabelHlColor:I

    .line 359
    return-void
.end method

.method public setItemLabelSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 371
    iput p1, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemLabelSize:I

    .line 372
    return-void
.end method

.method public setItemTag(Ljava/lang/String;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 198
    iput-object p1, p0, Lcom/oppo/widget/OppoShortCutItem;->mItemTag:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public width()I
    .locals 2

    .prologue
    .line 253
    iget v0, p0, Lcom/oppo/widget/OppoShortCutItem;->mRight:I

    iget v1, p0, Lcom/oppo/widget/OppoShortCutItem;->mLeft:I

    sub-int/2addr v0, v1

    return v0
.end method
