.class public Lcom/oppo/modemanager/CmccMode;
.super Lcom/oppo/modemanager/Mode;
.source "CmccMode.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/oppo/modemanager/Mode;-><init>()V

    .line 38
    const-string v0, "etc/mode_cmcc.xml"

    iput-object v0, p0, Lcom/oppo/modemanager/Mode;->mFilePath:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/modemanager/Mode;->mPkgList:Ljava/util/ArrayList;

    .line 40
    return-void
.end method


# virtual methods
.method public init()V
    .locals 0

    .prologue
    .line 34
    invoke-static {p0}, Lcom/oppo/modemanager/OppoModeUtils;->ParseModeXml(Lcom/oppo/modemanager/Mode;)V

    .line 35
    return-void
.end method
