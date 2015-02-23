.class public Lcom/oppo/widget/OppoEmptyBottle;
.super Landroid/widget/LinearLayout;
.source "OppoEmptyBottle.java"


# instance fields
.field private animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private iv:Landroid/widget/ImageView;

.field private mMessage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoEmptyBottle;->initOppoEmptyBottle(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoEmptyBottle;->initOppoEmptyBottle(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoEmptyBottle;->initOppoEmptyBottle(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method private initOppoEmptyBottle(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 55
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 56
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 57
    const v1, 0xc09044b

    invoke-static {p1, v1, p0}, Lcom/oppo/widget/OppoEmptyBottle;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 58
    const v1, 0xc02049a

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oppo/widget/OppoEmptyBottle;->iv:Landroid/widget/ImageView;

    .line 59
    const v1, 0xc0800d5

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoEmptyBottle;->setImage(I)V

    .line 60
    const v1, 0xc020499

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oppo/widget/OppoEmptyBottle;->mMessage:Landroid/widget/TextView;

    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc05043f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 63
    .local v0, paddingtop:I
    invoke-virtual {p0, v3, v0, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 64
    return-void
.end method


# virtual methods
.method public setImage(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 67
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 68
    .local v0, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoEmptyBottle;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 69
    return-void
.end method

.method public setImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/oppo/widget/OppoEmptyBottle;->iv:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    iget-object v0, p0, Lcom/oppo/widget/OppoEmptyBottle;->iv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/oppo/widget/OppoEmptyBottle;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 74
    return-void
.end method

.method public setMessage(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 77
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, msg:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoEmptyBottle;->setMessage(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/oppo/widget/OppoEmptyBottle;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/oppo/widget/OppoEmptyBottle;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    return-void
.end method

.method public startAnim()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/oppo/widget/OppoEmptyBottle;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/oppo/widget/OppoEmptyBottle;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoEmptyBottle;->iv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/oppo/widget/OppoEmptyBottle;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 106
    iget-object v0, p0, Lcom/oppo/widget/OppoEmptyBottle;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 107
    return-void
.end method

.method public useDeepColorStyle(Z)V
    .locals 3
    .parameter "b"

    .prologue
    .line 87
    if-eqz p1, :cond_0

    .line 88
    const v1, 0xc0800d6

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoEmptyBottle;->setImage(I)V

    .line 89
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc06040a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 94
    .local v0, color:I
    :goto_0
    iget-object v1, p0, Lcom/oppo/widget/OppoEmptyBottle;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    return-void

    .line 91
    .end local v0           #color:I
    :cond_0
    const v1, 0xc0800d5

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoEmptyBottle;->setImage(I)V

    .line 92
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc060409

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .restart local v0       #color:I
    goto :goto_0
.end method
