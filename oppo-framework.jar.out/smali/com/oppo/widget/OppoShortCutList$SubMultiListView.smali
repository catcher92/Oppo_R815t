.class public Lcom/oppo/widget/OppoShortCutList$SubMultiListView;
.super Lcom/oppo/widget/OppoListView;
.source "OppoShortCutList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoShortCutList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubMultiListView"
.end annotation


# instance fields
.field private mSaveSelector:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 420
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoShortCutList$SubMultiListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 421
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 416
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoShortCutList$SubMultiListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 417
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 411
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/widget/OppoListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 408
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/widget/OppoShortCutList$SubMultiListView;->mSaveSelector:Landroid/graphics/drawable/Drawable;

    .line 412
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc080417

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 413
    return-void
.end method

.method private getPositionInfo(Landroid/view/View;)I
    .locals 5
    .parameter "view"

    .prologue
    const/4 v3, -0x1

    .line 468
    if-nez p1, :cond_1

    move v1, v3

    .line 484
    :cond_0
    :goto_0
    return v1

    .line 471
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 473
    .local v0, object:Ljava/lang/Object;
    if-eqz v0, :cond_2

    instance-of v4, v0, Landroid/content/ContentValues;

    if-eqz v4, :cond_2

    move-object v2, v0

    .line 474
    check-cast v2, Landroid/content/ContentValues;

    .line 475
    .local v2, tagInfo:Landroid/content/ContentValues;
    invoke-static {v2}, Lcom/oppo/widget/OppoShortCutList$SubMultiListView;->getPositionInfoByContentValues(Landroid/content/ContentValues;)I

    move-result v1

    .line 477
    .local v1, p:I
    const/4 v4, 0x1

    if-eq v4, v1, :cond_0

    const/4 v4, 0x2

    if-eq v4, v1, :cond_0

    const/4 v4, 0x3

    if-eq v4, v1, :cond_0

    const/4 v4, 0x4

    if-eq v4, v1, :cond_0

    if-eqz v1, :cond_0

    move v1, v3

    .line 481
    goto :goto_0

    .end local v1           #p:I
    .end local v2           #tagInfo:Landroid/content/ContentValues;
    :cond_2
    move v1, v3

    .line 484
    goto :goto_0
.end method

.method public static getPositionInfoByContentValues(Landroid/content/ContentValues;)I
    .locals 4
    .parameter "contentValues"

    .prologue
    const/4 v2, -0x1

    .line 489
    if-nez p0, :cond_1

    .line 498
    :cond_0
    :goto_0
    return v2

    .line 492
    :cond_1
    const-string v3, "positionInfo"

    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 494
    .local v1, object:Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 495
    check-cast v0, Ljava/lang/Integer;

    .line 496
    .local v0, integer:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0
.end method


# virtual methods
.method protected positionSelector(ILandroid/view/View;)V
    .locals 4
    .parameter "position"
    .parameter "sel"

    .prologue
    .line 424
    if-eqz p2, :cond_1

    .line 425
    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutList$SubMultiListView;->mSaveSelector:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 426
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/widget/OppoShortCutList$SubMultiListView;->mSaveSelector:Landroid/graphics/drawable/Drawable;

    .line 429
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 430
    .local v0, selector:Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, p2}, Lcom/oppo/widget/OppoShortCutList$SubMultiListView;->getPositionInfo(Landroid/view/View;)I

    move-result v1

    .line 432
    .local v1, tag:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 435
    packed-switch v1, :pswitch_data_0

    .line 456
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 464
    .end local v0           #selector:Landroid/graphics/drawable/Drawable;
    .end local v1           #tag:I
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 465
    return-void

    .line 437
    .restart local v0       #selector:Landroid/graphics/drawable/Drawable;
    .restart local v1       #tag:I
    :pswitch_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0xc080418

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 439
    goto :goto_0

    .line 441
    :pswitch_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0xc080419

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 443
    goto :goto_0

    .line 445
    :pswitch_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0xc08041a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 447
    goto :goto_0

    .line 449
    :pswitch_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0xc08041b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 451
    goto :goto_0

    .line 453
    :pswitch_4
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .end local v0           #selector:Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .restart local v0       #selector:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 458
    :cond_2
    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutList$SubMultiListView;->mSaveSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 459
    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutList$SubMultiListView;->mSaveSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 435
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
