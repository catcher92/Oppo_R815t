.class Landroid/media/OppoMediaScanner$WplHandler;
.super Ljava/lang/Object;
.source "OppoMediaScanner.java"

# interfaces
.implements Landroid/sax/ElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/OppoMediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WplHandler"
.end annotation


# instance fields
.field final handler:Lorg/xml/sax/ContentHandler;

.field playListDirectory:Ljava/lang/String;

.field final synthetic this$0:Landroid/media/OppoMediaScanner;


# direct methods
.method public constructor <init>(Landroid/media/OppoMediaScanner;Ljava/lang/String;Landroid/net/Uri;Landroid/database/Cursor;)V
    .locals 5
    .parameter
    .parameter "playListDirectory"
    .parameter "uri"
    .parameter "fileList"

    .prologue
    .line 2103
    iput-object p1, p0, Landroid/media/OppoMediaScanner$WplHandler;->this$0:Landroid/media/OppoMediaScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2104
    iput-object p2, p0, Landroid/media/OppoMediaScanner$WplHandler;->playListDirectory:Ljava/lang/String;

    .line 2106
    new-instance v2, Landroid/sax/RootElement;

    const-string v4, "smil"

    invoke-direct {v2, v4}, Landroid/sax/RootElement;-><init>(Ljava/lang/String;)V

    .line 2107
    .local v2, root:Landroid/sax/RootElement;
    const-string v4, "body"

    invoke-virtual {v2, v4}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    .line 2108
    .local v0, body:Landroid/sax/Element;
    const-string v4, "seq"

    invoke-virtual {v0, v4}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v3

    .line 2109
    .local v3, seq:Landroid/sax/Element;
    const-string v4, "media"

    invoke-virtual {v3, v4}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v1

    .line 2110
    .local v1, media:Landroid/sax/Element;
    invoke-virtual {v1, p0}, Landroid/sax/Element;->setElementListener(Landroid/sax/ElementListener;)V

    .line 2112
    invoke-virtual {v2}, Landroid/sax/RootElement;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v4

    iput-object v4, p0, Landroid/media/OppoMediaScanner$WplHandler;->handler:Lorg/xml/sax/ContentHandler;

    .line 2113
    return-void
.end method


# virtual methods
.method public end()V
    .locals 0

    .prologue
    .line 2125
    return-void
.end method

.method getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    .prologue
    .line 2128
    iget-object v0, p0, Landroid/media/OppoMediaScanner$WplHandler;->handler:Lorg/xml/sax/ContentHandler;

    return-object v0
.end method

.method public start(Lorg/xml/sax/Attributes;)V
    .locals 3
    .parameter "attributes"

    .prologue
    .line 2117
    const-string v1, ""

    const-string v2, "src"

    invoke-interface {p1, v1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2118
    .local v0, path:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2119
    iget-object v1, p0, Landroid/media/OppoMediaScanner$WplHandler;->this$0:Landroid/media/OppoMediaScanner;

    iget-object v2, p0, Landroid/media/OppoMediaScanner$WplHandler;->playListDirectory:Ljava/lang/String;

    #calls: Landroid/media/OppoMediaScanner;->cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v0, v2}, Landroid/media/OppoMediaScanner;->access$3300(Landroid/media/OppoMediaScanner;Ljava/lang/String;Ljava/lang/String;)V

    .line 2121
    :cond_0
    return-void
.end method
