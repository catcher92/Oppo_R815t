.class abstract Lcom/oppo/preference/OppoGenericInflater;
.super Ljava/lang/Object;
.source "OppoGenericInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/preference/OppoGenericInflater$FactoryMerger;,
        Lcom/oppo/preference/OppoGenericInflater$Factory;,
        Lcom/oppo/preference/OppoGenericInflater$Parent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "P::",
        "Lcom/oppo/preference/OppoGenericInflater$Parent;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final mConstructorSignature:[Ljava/lang/Class;

.field private static final sConstructorMap:Ljava/util/HashMap;


# instance fields
.field private final DEBUG:Z

.field private final mConstructorArgs:[Ljava/lang/Object;

.field protected final mContext:Landroid/content/Context;

.field private mDefaultPackage:Ljava/lang/String;

.field private mFactory:Lcom/oppo/preference/OppoGenericInflater$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oppo/preference/OppoGenericInflater$Factory",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mFactorySet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oppo/preference/OppoGenericInflater;->mConstructorSignature:[Ljava/lang/Class;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oppo/preference/OppoGenericInflater;->sConstructorMap:Ljava/util/HashMap;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 112
    .local p0, this:Lcom/oppo/preference/OppoGenericInflater;,"Lcom/oppo/preference/OppoGenericInflater<TT;TP;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/preference/OppoGenericInflater;->DEBUG:Z

    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/oppo/preference/OppoGenericInflater;->mConstructorArgs:[Ljava/lang/Object;

    .line 113
    iput-object p1, p0, Lcom/oppo/preference/OppoGenericInflater;->mContext:Landroid/content/Context;

    .line 114
    return-void
.end method

.method protected constructor <init>(Lcom/oppo/preference/OppoGenericInflater;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "newContext"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oppo/preference/OppoGenericInflater",
            "<TT;TP;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, this:Lcom/oppo/preference/OppoGenericInflater;,"Lcom/oppo/preference/OppoGenericInflater<TT;TP;>;"
    .local p1, original:Lcom/oppo/preference/OppoGenericInflater;,"Lcom/oppo/preference/OppoGenericInflater<TT;TP;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/preference/OppoGenericInflater;->DEBUG:Z

    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/oppo/preference/OppoGenericInflater;->mConstructorArgs:[Ljava/lang/Object;

    .line 124
    iput-object p2, p0, Lcom/oppo/preference/OppoGenericInflater;->mContext:Landroid/content/Context;

    .line 125
    iget-object v0, p1, Lcom/oppo/preference/OppoGenericInflater;->mFactory:Lcom/oppo/preference/OppoGenericInflater$Factory;

    iput-object v0, p0, Lcom/oppo/preference/OppoGenericInflater;->mFactory:Lcom/oppo/preference/OppoGenericInflater$Factory;

    .line 126
    return-void
.end method

.method private final createItemFromTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;
    .locals 5
    .parameter "parser"
    .parameter "name"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Landroid/util/AttributeSet;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/oppo/preference/OppoGenericInflater;,"Lcom/oppo/preference/OppoGenericInflater<TT;TP;>;"
    const/4 v2, 0x0

    .line 405
    :try_start_0
    iget-object v3, p0, Lcom/oppo/preference/OppoGenericInflater;->mFactory:Lcom/oppo/preference/OppoGenericInflater$Factory;

    if-nez v3, :cond_1

    .line 407
    .local v2, item:Ljava/lang/Object;,"TT;"
    :goto_0
    if-nez v2, :cond_0

    .line 408
    const/4 v3, -0x1

    const/16 v4, 0x2e

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 409
    invoke-virtual {p0, p2, p3}, Lcom/oppo/preference/OppoGenericInflater;->onCreateItem(Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;

    move-result-object v2

    .line 417
    :cond_0
    :goto_1
    return-object v2

    .line 405
    .end local v2           #item:Ljava/lang/Object;,"TT;"
    :cond_1
    iget-object v3, p0, Lcom/oppo/preference/OppoGenericInflater;->mFactory:Lcom/oppo/preference/OppoGenericInflater$Factory;

    iget-object v4, p0, Lcom/oppo/preference/OppoGenericInflater;->mContext:Landroid/content/Context;

    invoke-interface {v3, p2, v4, p3}, Lcom/oppo/preference/OppoGenericInflater$Factory;->onCreateItem(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 411
    .restart local v2       #item:Ljava/lang/Object;,"TT;"
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p0, p2, v3, p3}, Lcom/oppo/preference/OppoGenericInflater;->createItem(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    goto :goto_1

    .line 420
    .end local v2           #item:Ljava/lang/Object;,"TT;"
    :catch_0
    move-exception v0

    .line 421
    .local v0, e:Landroid/view/InflateException;
    throw v0

    .line 424
    .end local v0           #e:Landroid/view/InflateException;
    :catch_1
    move-exception v0

    .line 425
    .local v0, e:Ljava/lang/ClassNotFoundException;
    new-instance v1, Landroid/view/InflateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Error inflating class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 427
    .local v1, ie:Landroid/view/InflateException;
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 428
    throw v1

    .line 431
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    .end local v1           #ie:Landroid/view/InflateException;
    :catch_2
    move-exception v0

    .line 432
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Landroid/view/InflateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Error inflating class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 434
    .restart local v1       #ie:Landroid/view/InflateException;
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 435
    throw v1
.end method

.method private rInflate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "parser"
    .parameter
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "TT;",
            "Landroid/util/AttributeSet;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 445
    .local p0, this:Lcom/oppo/preference/OppoGenericInflater;,"Lcom/oppo/preference/OppoGenericInflater<TT;TP;>;"
    .local p2, parent:Ljava/lang/Object;,"TT;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 449
    .local v0, depth:I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, type:I
    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_2

    :cond_1
    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 451
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 455
    invoke-virtual {p0, p1, p2, p3}, Lcom/oppo/preference/OppoGenericInflater;->onCreateCustomFromTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Landroid/util/AttributeSet;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 462
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 464
    .local v2, name:Ljava/lang/String;
    invoke-direct {p0, p1, v2, p3}, Lcom/oppo/preference/OppoGenericInflater;->createItemFromTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;

    move-result-object v1

    .local v1, item:Ljava/lang/Object;,"TT;"
    move-object v4, p2

    .line 470
    check-cast v4, Lcom/oppo/preference/OppoGenericInflater$Parent;

    invoke-interface {v4, v1}, Lcom/oppo/preference/OppoGenericInflater$Parent;->addItemFromInflater(Ljava/lang/Object;)V

    .line 475
    invoke-direct {p0, p1, v1, p3}, Lcom/oppo/preference/OppoGenericInflater;->rInflate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Landroid/util/AttributeSet;)V

    goto :goto_0

    .line 481
    .end local v1           #item:Ljava/lang/Object;,"TT;"
    .end local v2           #name:Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public abstract cloneInContext(Landroid/content/Context;)Lcom/oppo/preference/OppoGenericInflater;
.end method

.method public final createItem(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;
    .locals 7
    .parameter "name"
    .parameter "prefix"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/AttributeSet;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Landroid/view/InflateException;
        }
    .end annotation

    .prologue
    .line 351
    .local p0, this:Lcom/oppo/preference/OppoGenericInflater;,"Lcom/oppo/preference/OppoGenericInflater<TT;TP;>;"
    sget-object v5, Lcom/oppo/preference/OppoGenericInflater;->sConstructorMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Constructor;

    .line 354
    .local v2, constructor:Ljava/lang/reflect/Constructor;
    if-nez v2, :cond_0

    .line 357
    :try_start_0
    iget-object v5, p0, Lcom/oppo/preference/OppoGenericInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    if-eqz p2, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 359
    .local v1, clazz:Ljava/lang/Class;
    sget-object v5, Lcom/oppo/preference/OppoGenericInflater;->mConstructorSignature:[Ljava/lang/Class;

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 360
    sget-object v5, Lcom/oppo/preference/OppoGenericInflater;->sConstructorMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    .end local v1           #clazz:Ljava/lang/Class;
    :cond_0
    iget-object v0, p0, Lcom/oppo/preference/OppoGenericInflater;->mConstructorArgs:[Ljava/lang/Object;

    .line 364
    .local v0, args:[Ljava/lang/Object;
    const/4 v5, 0x1

    aput-object p3, v0, v5

    .line 365
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v5

    return-object v5

    .end local v0           #args:[Ljava/lang/Object;
    :cond_1
    move-object v5, p1

    .line 357
    goto :goto_0

    .line 368
    :catch_0
    move-exception v3

    .line 369
    .local v3, e:Ljava/lang/NoSuchMethodException;
    new-instance v4, Landroid/view/InflateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": Error inflating class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p2, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .end local p1
    :cond_2
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 371
    .local v4, ie:Landroid/view/InflateException;
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 372
    throw v4

    .line 375
    .end local v3           #e:Ljava/lang/NoSuchMethodException;
    .end local v4           #ie:Landroid/view/InflateException;
    .restart local p1
    :catch_1
    move-exception v3

    .line 377
    .local v3, e:Ljava/lang/ClassNotFoundException;
    throw v3

    .line 379
    .end local v3           #e:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v3

    .line 380
    .local v3, e:Ljava/lang/Exception;
    new-instance v4, Landroid/view/InflateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": Error inflating class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 382
    .restart local v4       #ie:Landroid/view/InflateException;
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 383
    throw v4
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 165
    .local p0, this:Lcom/oppo/preference/OppoGenericInflater;,"Lcom/oppo/preference/OppoGenericInflater<TT;TP;>;"
    iget-object v0, p0, Lcom/oppo/preference/OppoGenericInflater;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDefaultPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    .local p0, this:Lcom/oppo/preference/OppoGenericInflater;,"Lcom/oppo/preference/OppoGenericInflater<TT;TP;>;"
    iget-object v0, p0, Lcom/oppo/preference/OppoGenericInflater;->mDefaultPackage:Ljava/lang/String;

    return-object v0
.end method

.method public final getFactory()Lcom/oppo/preference/OppoGenericInflater$Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oppo/preference/OppoGenericInflater$Factory",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 174
    .local p0, this:Lcom/oppo/preference/OppoGenericInflater;,"Lcom/oppo/preference/OppoGenericInflater<TT;TP;>;"
    iget-object v0, p0, Lcom/oppo/preference/OppoGenericInflater;->mFactory:Lcom/oppo/preference/OppoGenericInflater$Factory;

    return-object v0
.end method

.method public inflate(ILcom/oppo/preference/OppoGenericInflater$Parent;)Ljava/lang/Object;
    .locals 1
    .parameter "resource"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITP;)TT;"
        }
    .end annotation

    .prologue
    .line 214
    .local p0, this:Lcom/oppo/preference/OppoGenericInflater;,"Lcom/oppo/preference/OppoGenericInflater<TT;TP;>;"
    .local p2, root:Lcom/oppo/preference/OppoGenericInflater$Parent;,"TP;"
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/oppo/preference/OppoGenericInflater;->inflate(ILcom/oppo/preference/OppoGenericInflater$Parent;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public inflate(ILcom/oppo/preference/OppoGenericInflater$Parent;Z)Ljava/lang/Object;
    .locals 2
    .parameter "resource"
    .parameter
    .parameter "attachToRoot"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITP;Z)TT;"
        }
    .end annotation

    .prologue
    .line 250
    .local p0, this:Lcom/oppo/preference/OppoGenericInflater;,"Lcom/oppo/preference/OppoGenericInflater<TT;TP;>;"
    .local p2, root:Lcom/oppo/preference/OppoGenericInflater$Parent;,"TP;"
    invoke-virtual {p0}, Lcom/oppo/preference/OppoGenericInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 252
    .local v0, parser:Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p0, v0, p2, p3}, Lcom/oppo/preference/OppoGenericInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Lcom/oppo/preference/OppoGenericInflater$Parent;Z)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 255
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    throw v1
.end method

.method public inflate(Lorg/xmlpull/v1/XmlPullParser;Lcom/oppo/preference/OppoGenericInflater$Parent;)Ljava/lang/Object;
    .locals 1
    .parameter "parser"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "TP;)TT;"
        }
    .end annotation

    .prologue
    .line 232
    .local p0, this:Lcom/oppo/preference/OppoGenericInflater;,"Lcom/oppo/preference/OppoGenericInflater<TT;TP;>;"
    .local p2, root:Lcom/oppo/preference/OppoGenericInflater$Parent;,"TP;"
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/oppo/preference/OppoGenericInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Lcom/oppo/preference/OppoGenericInflater$Parent;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public inflate(Lorg/xmlpull/v1/XmlPullParser;Lcom/oppo/preference/OppoGenericInflater$Parent;Z)Ljava/lang/Object;
    .locals 11
    .parameter "parser"
    .parameter
    .parameter "attachToRoot"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "TP;Z)TT;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/oppo/preference/OppoGenericInflater;,"Lcom/oppo/preference/OppoGenericInflater<TT;TP;>;"
    .local p2, root:Lcom/oppo/preference/OppoGenericInflater$Parent;,"TP;"
    const/4 v10, 0x2

    .line 277
    iget-object v7, p0, Lcom/oppo/preference/OppoGenericInflater;->mConstructorArgs:[Ljava/lang/Object;

    monitor-enter v7

    .line 278
    :try_start_0
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 279
    .local v0, attrs:Landroid/util/AttributeSet;
    iget-object v6, p0, Lcom/oppo/preference/OppoGenericInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/oppo/preference/OppoGenericInflater;->mContext:Landroid/content/Context;

    aput-object v9, v6, v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    move-object v3, p2

    .line 285
    .local v3, result:Lcom/oppo/preference/OppoGenericInflater$Parent;,"TT;"
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .local v4, type:I
    if-eq v4, v10, :cond_1

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    .line 289
    :cond_1
    if-eq v4, v10, :cond_2

    .line 290
    new-instance v6, Landroid/view/InflateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": No start tag found!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/view/InflateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 314
    .end local v4           #type:I
    :catch_0
    move-exception v1

    .line 315
    .local v1, e:Landroid/view/InflateException;
    :try_start_2
    throw v1

    .line 331
    .end local v0           #attrs:Landroid/util/AttributeSet;
    .end local v1           #e:Landroid/view/InflateException;
    .end local v3           #result:Lcom/oppo/preference/OppoGenericInflater$Parent;,"TT;"
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 300
    .restart local v0       #attrs:Landroid/util/AttributeSet;
    .restart local v3       #result:Lcom/oppo/preference/OppoGenericInflater$Parent;,"TT;"
    .restart local v4       #type:I
    :cond_2
    :try_start_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6, v0}, Lcom/oppo/preference/OppoGenericInflater;->createItemFromTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;

    move-result-object v5

    .line 302
    .local v5, xmlRoot:Ljava/lang/Object;,"TT;"
    check-cast v5, Lcom/oppo/preference/OppoGenericInflater$Parent;

    .end local v5           #xmlRoot:Ljava/lang/Object;,"TT;"
    invoke-virtual {p0, p2, p3, v5}, Lcom/oppo/preference/OppoGenericInflater;->onMergeRoots(Lcom/oppo/preference/OppoGenericInflater$Parent;ZLcom/oppo/preference/OppoGenericInflater$Parent;)Lcom/oppo/preference/OppoGenericInflater$Parent;

    move-result-object v3

    .line 308
    invoke-direct {p0, p1, v3, v0}, Lcom/oppo/preference/OppoGenericInflater;->rInflate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Landroid/util/AttributeSet;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/view/InflateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 330
    :try_start_4
    monitor-exit v7

    return-object v3

    .line 318
    .end local v4           #type:I
    :catch_1
    move-exception v1

    .line 319
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v2, Landroid/view/InflateException;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 320
    .local v2, ex:Landroid/view/InflateException;
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 321
    throw v2

    .line 323
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .end local v2           #ex:Landroid/view/InflateException;
    :catch_2
    move-exception v1

    .line 324
    .local v1, e:Ljava/io/IOException;
    new-instance v2, Landroid/view/InflateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ": "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 326
    .restart local v2       #ex:Landroid/view/InflateException;
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 327
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method protected onCreateCustomFromTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Landroid/util/AttributeSet;)Z
    .locals 1
    .parameter "parser"
    .parameter
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "TT;",
            "Landroid/util/AttributeSet;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 496
    .local p0, this:Lcom/oppo/preference/OppoGenericInflater;,"Lcom/oppo/preference/OppoGenericInflater<TT;TP;>;"
    .local p2, parent:Ljava/lang/Object;,"TT;"
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreateItem(Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;
    .locals 1
    .parameter "name"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/AttributeSet;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 397
    .local p0, this:Lcom/oppo/preference/OppoGenericInflater;,"Lcom/oppo/preference/OppoGenericInflater<TT;TP;>;"
    iget-object v0, p0, Lcom/oppo/preference/OppoGenericInflater;->mDefaultPackage:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/oppo/preference/OppoGenericInflater;->createItem(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onMergeRoots(Lcom/oppo/preference/OppoGenericInflater$Parent;ZLcom/oppo/preference/OppoGenericInflater$Parent;)Lcom/oppo/preference/OppoGenericInflater$Parent;
    .locals 0
    .parameter
    .parameter "attachToGivenRoot"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;ZTP;)TP;"
        }
    .end annotation

    .prologue
    .line 500
    .local p0, this:Lcom/oppo/preference/OppoGenericInflater;,"Lcom/oppo/preference/OppoGenericInflater<TT;TP;>;"
    .local p1, givenRoot:Lcom/oppo/preference/OppoGenericInflater$Parent;,"TP;"
    .local p3, xmlRoot:Lcom/oppo/preference/OppoGenericInflater$Parent;,"TP;"
    return-object p3
.end method

.method public setDefaultPackage(Ljava/lang/String;)V
    .locals 0
    .parameter "defaultPackage"

    .prologue
    .line 148
    .local p0, this:Lcom/oppo/preference/OppoGenericInflater;,"Lcom/oppo/preference/OppoGenericInflater<TT;TP;>;"
    iput-object p1, p0, Lcom/oppo/preference/OppoGenericInflater;->mDefaultPackage:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setFactory(Lcom/oppo/preference/OppoGenericInflater$Factory;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oppo/preference/OppoGenericInflater$Factory",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 190
    .local p0, this:Lcom/oppo/preference/OppoGenericInflater;,"Lcom/oppo/preference/OppoGenericInflater<TT;TP;>;"
    .local p1, factory:Lcom/oppo/preference/OppoGenericInflater$Factory;,"Lcom/oppo/preference/OppoGenericInflater$Factory<TT;>;"
    iget-boolean v0, p0, Lcom/oppo/preference/OppoGenericInflater;->mFactorySet:Z

    if-eqz v0, :cond_0

    .line 191
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A factory has already been set on this inflater"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_0
    if-nez p1, :cond_1

    .line 194
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Given factory can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/preference/OppoGenericInflater;->mFactorySet:Z

    .line 197
    iget-object v0, p0, Lcom/oppo/preference/OppoGenericInflater;->mFactory:Lcom/oppo/preference/OppoGenericInflater$Factory;

    if-nez v0, :cond_2

    .line 198
    iput-object p1, p0, Lcom/oppo/preference/OppoGenericInflater;->mFactory:Lcom/oppo/preference/OppoGenericInflater$Factory;

    .line 202
    :goto_0
    return-void

    .line 200
    :cond_2
    new-instance v0, Lcom/oppo/preference/OppoGenericInflater$FactoryMerger;

    iget-object v1, p0, Lcom/oppo/preference/OppoGenericInflater;->mFactory:Lcom/oppo/preference/OppoGenericInflater$Factory;

    invoke-direct {v0, p1, v1}, Lcom/oppo/preference/OppoGenericInflater$FactoryMerger;-><init>(Lcom/oppo/preference/OppoGenericInflater$Factory;Lcom/oppo/preference/OppoGenericInflater$Factory;)V

    iput-object v0, p0, Lcom/oppo/preference/OppoGenericInflater;->mFactory:Lcom/oppo/preference/OppoGenericInflater$Factory;

    goto :goto_0
.end method
