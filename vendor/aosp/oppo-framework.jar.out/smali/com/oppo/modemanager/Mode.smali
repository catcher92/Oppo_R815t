.class public Lcom/oppo/modemanager/Mode;
.super Ljava/lang/Object;
.source "Mode.java"


# static fields
.field public static final XML_TAG:Ljava/lang/String; = "ModeItem"


# instance fields
.field public mFilePath:Ljava/lang/String;

.field public mPkgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/oppo/modemanager/Mode;->mPkgList:Ljava/util/ArrayList;

    .line 32
    iput-object v0, p0, Lcom/oppo/modemanager/Mode;->mFilePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public init()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method
