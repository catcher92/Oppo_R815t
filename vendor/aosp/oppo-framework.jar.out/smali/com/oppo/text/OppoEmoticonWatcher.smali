.class public Lcom/oppo/text/OppoEmoticonWatcher;
.super Ljava/lang/Object;
.source "OppoEmoticonWatcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/text/OppoEmoticonWatcher$OppoEmoticonSpan;,
        Lcom/oppo/text/OppoEmoticonWatcher$OppoEmoData;
    }
.end annotation


# instance fields
.field private final mEmoDrawableIds:[I

.field private mEmoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oppo/text/OppoEmoticonWatcher$OppoEmoData;",
            ">;"
        }
    .end annotation
.end field

.field private final mEmoPattern:Ljava/util/regex/Pattern;

.field private final mEmoStrings:[Ljava/lang/String;

.field private final mResources:Landroid/content/res/Resources;

.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 6
    .parameter "tv"

    .prologue
    const/16 v5, 0x14

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/oppo/text/OppoEmoticonWatcher;->mEmoList:Ljava/util/ArrayList;

    .line 60
    iput-object p1, p0, Lcom/oppo/text/OppoEmoticonWatcher;->mTextView:Landroid/widget/TextView;

    .line 61
    invoke-virtual {p0}, Lcom/oppo/text/OppoEmoticonWatcher;->onInitWatcher()V

    .line 62
    iget-object v2, p0, Lcom/oppo/text/OppoEmoticonWatcher;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/text/OppoEmoticonWatcher;->mResources:Landroid/content/res/Resources;

    .line 63
    new-array v1, v5, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/oppo/text/OppoEmoticonWatcher;->mResources:Landroid/content/res/Resources;

    const v4, 0xc04040c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/oppo/text/OppoEmoticonWatcher;->mResources:Landroid/content/res/Resources;

    const v4, 0xc04040d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/oppo/text/OppoEmoticonWatcher;->mResources:Landroid/content/res/Resources;

    const v4, 0xc04040e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/oppo/text/OppoEmoticonWatcher;->mResources:Landroid/content/res/Resources;

    const v4, 0xc04040f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/oppo/text/OppoEmoticonWatcher;->mResources:Landroid/content/res/Resources;

    const v4, 0xc040410

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/oppo/text/OppoEmoticonWatcher;->mResources:Landroid/content/res/Resources;

    const v4, 0xc040411

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/oppo/text/OppoEmoticonWatcher;->mResources:Landroid/content/res/Resources;

    const v4, 0xc040412

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/oppo/text/OppoEmoticonWatcher;->mResources:Landroid/content/res/Resources;

    const v4, 0xc040413

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/oppo/text/OppoEmoticonWatcher;->mResources:Landroid/content/res/Resources;

    const v4, 0xc040414

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/oppo/text/OppoEmoticonWatcher;->mResources:Landroid/content/res/Resources;

    const v4, 0xc040415

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/oppo/text/OppoEmoticonWatcher;->mResources:Landroid/content/res/Resources;

    const v4, 0xc040416

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xb

    iget-object v3, p0, Lcom/oppo/text/OppoEmoticonWatcher;->mResources:Landroid/content/res/Resources;

    const v4, 0xc040417

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xc

    iget-object v3, p0, Lcom/oppo/text/OppoEmoticonWatcher;->mResources:Landroid/content/res/Resources;

    const v4, 0xc040418

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xd

    iget-object v3, p0, Lcom/oppo/text/OppoEmoticonWatcher;->mResources:Landroid/content/res/Resources;

    const v4, 0xc040419

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xe

    iget-object v3, p0, Lcom/oppo/text/OppoEmoticonWatcher;->mResources:Landroid/content/res/Resources;

    const v4, 0xc04041a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xf

    iget-object v3, p0, Lcom/oppo/text/OppoEmoticonWatcher;->mResources:Landroid/content/res/Resources;

    const v4, 0xc04041b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x10

    iget-object v3, p0, Lcom/oppo/text/OppoEmoticonWatcher;->mResources:Landroid/content/res/Resources;

    const v4, 0xc04041c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x11

    iget-object v3, p0, Lcom/oppo/text/OppoEmoticonWatcher;->mResources:Landroid/content/res/Resources;

    const v4, 0xc04041d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x12

    iget-object v3, p0, Lcom/oppo/text/OppoEmoticonWatcher;->mResources:Landroid/content/res/Resources;

    const v4, 0xc04041e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x13

    iget-object v3, p0, Lcom/oppo/text/OppoEmoticonWatcher;->mResources:Landroid/content/res/Resources;

    const v4, 0xc04041f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 84
    .local v1, emoStrings:[Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/text/OppoEmoticonWatcher;->mEmoStrings:[Ljava/lang/String;

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/text/OppoEmoticonWatcher;->mResources:Landroid/content/res/Resources;

    const v4, 0xc040420

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/text/OppoEmoticonWatcher;->mResources:Landroid/content/res/Resources;

    const v4, 0xc040421

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/text/OppoEmoticonWatcher;->mResources:Landroid/content/res/Resources;

    const v4, 0xc040422

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/text/OppoEmoticonWatcher;->mResources:Landroid/content/res/Resources;

    const v4, 0xc040423

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/text/OppoEmoticonWatcher;->mResources:Landroid/content/res/Resources;

    const v4, 0xc040424

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/text/OppoEmoticonWatcher;->mResources:Landroid/content/res/Resources;

    const v4, 0xc040425

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/text/OppoEmoticonWatcher;->mResources:Landroid/content/res/Resources;

    const v4, 0xc040426

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/text/OppoEmoticonWatcher;->mResources:Landroid/content/res/Resources;

    const v4, 0xc040427

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/text/OppoEmoticonWatcher;->mResources:Landroid/content/res/Resources;

    const v4, 0xc040428

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/text/OppoEmoticonWatcher;->mResources:Landroid/content/res/Resources;

    const v4, 0xc040429

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/text/OppoEmoticonWatcher;->mResources:Landroid/content/res/Resources;

    const v4, 0xc04042a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/text/OppoEmoticonWatcher;->mResources:Landroid/content/res/Resources;

    const v4, 0xc04042b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/text/OppoEmoticonWatcher;->mResources:Landroid/content/res/Resources;

    const v4, 0xc04042c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/text/OppoEmoticonWatcher;->mResources:Landroid/content/res/Resources;

    const v4, 0xc04042d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/text/OppoEmoticonWatcher;->mResources:Landroid/content/res/Resources;

    const v4, 0xc04042e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/text/OppoEmoticonWatcher;->mResources:Landroid/content/res/Resources;

    const v4, 0xc04042f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/text/OppoEmoticonWatcher;->mResources:Landroid/content/res/Resources;

    const v4, 0xc040430

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/text/OppoEmoticonWatcher;->mResources:Landroid/content/res/Resources;

    const v4, 0xc040431

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/text/OppoEmoticonWatcher;->mResources:Landroid/content/res/Resources;

    const v4, 0xc040432

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/text/OppoEmoticonWatcher;->mResources:Landroid/content/res/Resources;

    const v4, 0xc040433

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/text/OppoEmoticonWatcher;->mEmoPattern:Ljava/util/regex/Pattern;

    .line 108
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    .line 119
    .local v0, emoDrawableIds:[I
    iput-object v0, p0, Lcom/oppo/text/OppoEmoticonWatcher;->mEmoDrawableIds:[I

    .line 120
    return-void

    .line 108
    :array_0
    .array-data 0x4
        0x40t 0x4t 0x8t 0xct
        0x53t 0x4t 0x8t 0xct
        0x41t 0x4t 0x8t 0xct
        0x42t 0x4t 0x8t 0xct
        0x43t 0x4t 0x8t 0xct
        0x44t 0x4t 0x8t 0xct
        0x45t 0x4t 0x8t 0xct
        0x46t 0x4t 0x8t 0xct
        0x47t 0x4t 0x8t 0xct
        0x48t 0x4t 0x8t 0xct
        0x49t 0x4t 0x8t 0xct
        0x4at 0x4t 0x8t 0xct
        0x4bt 0x4t 0x8t 0xct
        0x4ct 0x4t 0x8t 0xct
        0x4dt 0x4t 0x8t 0xct
        0x4et 0x4t 0x8t 0xct
        0x4ft 0x4t 0x8t 0xct
        0x50t 0x4t 0x8t 0xct
        0x51t 0x4t 0x8t 0xct
        0x52t 0x4t 0x8t 0xct
    .end array-data
.end method

.method private findDrawableId(Ljava/lang/CharSequence;)I
    .locals 4
    .parameter "s"

    .prologue
    .line 123
    iget-object v3, p0, Lcom/oppo/text/OppoEmoticonWatcher;->mEmoStrings:[Ljava/lang/String;

    array-length v1, v3

    .line 124
    .local v1, len:I
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, str:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 126
    iget-object v3, p0, Lcom/oppo/text/OppoEmoticonWatcher;->mEmoStrings:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 127
    iget-object v3, p0, Lcom/oppo/text/OppoEmoticonWatcher;->mEmoDrawableIds:[I

    aget v3, v3, v0

    .line 130
    :goto_1
    return v3

    .line 125
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private updataEmoItem(Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "buffer"

    .prologue
    .line 143
    iget-object v3, p0, Lcom/oppo/text/OppoEmoticonWatcher;->mEmoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 145
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 146
    .local v2, string:Ljava/lang/String;
    iget-object v3, p0, Lcom/oppo/text/OppoEmoticonWatcher;->mEmoPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 148
    .local v1, m:Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 149
    new-instance v0, Lcom/oppo/text/OppoEmoticonWatcher$OppoEmoData;

    invoke-direct {v0, p0}, Lcom/oppo/text/OppoEmoticonWatcher$OppoEmoData;-><init>(Lcom/oppo/text/OppoEmoticonWatcher;)V

    .line 150
    .local v0, emoData:Lcom/oppo/text/OppoEmoticonWatcher$OppoEmoData;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    iput v3, v0, Lcom/oppo/text/OppoEmoticonWatcher$OppoEmoData;->mStart:I

    .line 151
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    iput v3, v0, Lcom/oppo/text/OppoEmoticonWatcher$OppoEmoData;->mEnd:I

    .line 152
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/oppo/text/OppoEmoticonWatcher$OppoEmoData;->mStr:Ljava/lang/String;

    .line 153
    iget-object v3, v0, Lcom/oppo/text/OppoEmoticonWatcher$OppoEmoData;->mStr:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/oppo/text/OppoEmoticonWatcher;->findDrawableId(Ljava/lang/CharSequence;)I

    move-result v3

    iput v3, v0, Lcom/oppo/text/OppoEmoticonWatcher$OppoEmoData;->mDrawableId:I

    .line 154
    iget-object v3, p0, Lcom/oppo/text/OppoEmoticonWatcher;->mEmoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 156
    .end local v0           #emoData:Lcom/oppo/text/OppoEmoticonWatcher$OppoEmoData;
    :cond_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 162
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "text"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 168
    return-void
.end method

.method protected onInitWatcher()V
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/oppo/text/OppoEmoticonWatcher;->mTextView:Landroid/widget/TextView;

    const/high16 v1, 0x1200

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 139
    iget-object v0, p0, Lcom/oppo/text/OppoEmoticonWatcher;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    const v2, 0x3f8ccccd

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 140
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 10
    .parameter "text"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    const/4 v9, 0x0

    .line 173
    add-int v6, p2, p4

    invoke-interface {p1, p2, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .local v3, emoSequence:Ljava/lang/CharSequence;
    move-object v0, p1

    .line 174
    check-cast v0, Landroid/text/SpannableStringBuilder;

    .line 175
    .local v0, EmoSpan:Landroid/text/SpannableStringBuilder;
    invoke-direct {p0, v3}, Lcom/oppo/text/OppoEmoticonWatcher;->updataEmoItem(Ljava/lang/CharSequence;)V

    .line 177
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget-object v6, p0, Lcom/oppo/text/OppoEmoticonWatcher;->mEmoList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_0

    .line 178
    iget-object v6, p0, Lcom/oppo/text/OppoEmoticonWatcher;->mEmoList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/text/OppoEmoticonWatcher$OppoEmoData;

    .line 179
    .local v2, emoData:Lcom/oppo/text/OppoEmoticonWatcher$OppoEmoData;
    iget-object v6, p0, Lcom/oppo/text/OppoEmoticonWatcher;->mResources:Landroid/content/res/Resources;

    iget v7, v2, Lcom/oppo/text/OppoEmoticonWatcher$OppoEmoData;->mDrawableId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 181
    .local v1, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-virtual {v1, v9, v9, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 182
    new-instance v5, Lcom/oppo/text/OppoEmoticonWatcher$OppoEmoticonSpan;

    invoke-direct {v5, p0, v1}, Lcom/oppo/text/OppoEmoticonWatcher$OppoEmoticonSpan;-><init>(Lcom/oppo/text/OppoEmoticonWatcher;Landroid/graphics/drawable/Drawable;)V

    .line 183
    .local v5, span:Lcom/oppo/text/OppoEmoticonWatcher$OppoEmoticonSpan;
    iget v6, v2, Lcom/oppo/text/OppoEmoticonWatcher$OppoEmoData;->mStart:I

    add-int/2addr v6, p2

    iget v7, v2, Lcom/oppo/text/OppoEmoticonWatcher$OppoEmoData;->mEnd:I

    add-int/2addr v7, p2

    const/16 v8, 0x21

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 177
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 186
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v2           #emoData:Lcom/oppo/text/OppoEmoticonWatcher$OppoEmoData;
    .end local v5           #span:Lcom/oppo/text/OppoEmoticonWatcher$OppoEmoticonSpan;
    :cond_0
    return-void
.end method
