.class public abstract Lcom/oppo/widget/OppoRecipientAlternatesAdapter;
.super Landroid/widget/CursorAdapter;
.source "OppoRecipientAlternatesAdapter.java"


# static fields
.field public static MAX_LOOKUPS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "OppoRecipientAlternatesAdapter"


# instance fields
.field protected mCheckedItemChangedListener:Lcom/oppo/widget/OppoAlternatesUtil$OnCheckedItemChangedListener;

.field protected mCheckedItemPosition:I

.field protected mCurrentChip:Lcom/oppo/widget/OppoRecipientChip;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/16 v0, 0x32

    sput v0, Lcom/oppo/widget/OppoRecipientAlternatesAdapter;->MAX_LOOKUPS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/oppo/widget/OppoAlternatesUtil$OnCheckedItemChangedListener;)V
    .locals 1
    .parameter "context"
    .parameter "cusor"
    .parameter "listener"

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/widget/OppoRecipientAlternatesAdapter;->mCheckedItemPosition:I

    .line 55
    iput-object p3, p0, Lcom/oppo/widget/OppoRecipientAlternatesAdapter;->mCheckedItemChangedListener:Lcom/oppo/widget/OppoAlternatesUtil$OnCheckedItemChangedListener;

    .line 56
    return-void
.end method


# virtual methods
.method public abstract getAlternatesCursor(Landroid/content/Context;J)Landroid/database/Cursor;
.end method

.method public abstract getMatchingRecipients(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/oppo/widget/OppoRecipientEntry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRecipientEntry(I)Lcom/oppo/widget/OppoRecipientEntry;
.end method

.method public setCurrentChip(Lcom/oppo/widget/OppoRecipientChip;)V
    .locals 0
    .parameter "chip"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/oppo/widget/OppoRecipientAlternatesAdapter;->mCurrentChip:Lcom/oppo/widget/OppoRecipientChip;

    .line 91
    return-void
.end method
