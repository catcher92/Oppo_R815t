.class Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;
.super Lcom/oppo/widget/Oppo3DGLRenderer;
.source "Oppo3DLomoCmView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/Oppo3DLomoCmView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Oppo3DLomoCmRenderer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/Oppo3DLomoCmView;


# direct methods
.method public constructor <init>(Lcom/oppo/widget/Oppo3DLomoCmView;Landroid/content/Context;Lcom/oppo/widget/Oppo3DLomoCmView;)V
    .locals 3
    .parameter
    .parameter "context"
    .parameter "view"

    .prologue
    const/high16 v1, 0x3f80

    .line 307
    iput-object p1, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    .line 308
    invoke-direct {p0, p2, p3}, Lcom/oppo/widget/Oppo3DGLRenderer;-><init>(Landroid/content/Context;Lcom/oppo/widget/Oppo3DGLView;)V

    .line 309
    iput-object p2, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mContext:Landroid/content/Context;

    .line 310
    new-instance v0, Lcom/oppo/model/lib/Matrix4f;

    invoke-direct {v0}, Lcom/oppo/model/lib/Matrix4f;-><init>()V

    #setter for: Lcom/oppo/widget/Oppo3DLomoCmView;->matTrans:Lcom/oppo/model/lib/Matrix4f;
    invoke-static {p1, v0}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$102(Lcom/oppo/widget/Oppo3DLomoCmView;Lcom/oppo/model/lib/Matrix4f;)Lcom/oppo/model/lib/Matrix4f;

    .line 311
    #setter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mScaleX:F
    invoke-static {p1, v1}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$202(Lcom/oppo/widget/Oppo3DLomoCmView;F)F

    .line 312
    #setter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mScaleY:F
    invoke-static {p1, v1}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$302(Lcom/oppo/widget/Oppo3DLomoCmView;F)F

    .line 313
    #calls: Lcom/oppo/widget/Oppo3DLomoCmView;->load()V
    invoke-static {p1}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$400(Lcom/oppo/widget/Oppo3DLomoCmView;)V

    .line 314
    iput-object p3, p1, Lcom/oppo/widget/Oppo3DLomoCmView;->mOppoLomoCmView:Lcom/oppo/widget/Oppo3DLomoCmView;

    .line 315
    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mModel:Lcom/oppo/model/ms3d/MsModel;
    invoke-static {p1}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$500(Lcom/oppo/widget/Oppo3DLomoCmView;)Lcom/oppo/model/ms3d/MsModel;

    move-result-object v0

    invoke-static {}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$600()[Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$700()[I

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/oppo/widget/Oppo3DGLRenderer;->initTextureInfo(Lcom/oppo/model/ms3d/MsModel;[Ljava/lang/String;[I)Z

    .line 316
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 305
    invoke-direct {p0}, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->initPosition()V

    return-void
.end method

.method private bindMaterial(Ljavax/microedition/khronos/opengles/GL10;I)V
    .locals 12
    .parameter "gl"
    .parameter "materialIndex"

    .prologue
    const/4 v11, 0x1

    const/4 v6, 0x4

    const/16 v10, 0x408

    const/4 v9, 0x0

    const/high16 v8, 0x3f80

    .line 618
    new-array v0, v6, [F

    fill-array-data v0, :array_0

    .line 619
    .local v0, mAmbient:[F
    new-array v1, v6, [F

    fill-array-data v1, :array_1

    .line 620
    .local v1, mDiffuse:[F
    new-array v4, v6, [F

    fill-array-data v4, :array_2

    .line 621
    .local v4, mSpecular:[F
    new-array v2, v6, [F

    fill-array-data v2, :array_3

    .line 622
    .local v2, mEmission:[F
    const/4 v3, 0x0

    .line 623
    .local v3, mShininess:F
    if-ltz p2, :cond_0

    iget-object v6, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mModel:Lcom/oppo/model/ms3d/MsModel;
    invoke-static {v6}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$500(Lcom/oppo/widget/Oppo3DLomoCmView;)Lcom/oppo/model/ms3d/MsModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oppo/model/ms3d/MsModel;->getNumMaterials()I

    move-result v6

    if-lt p2, v6, :cond_1

    .line 624
    :cond_0
    invoke-interface {p1, v11}, Ljavax/microedition/khronos/opengles/GL10;->glDepthMask(Z)V

    .line 625
    const/16 v6, 0xbc0

    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 626
    const/16 v6, 0x2802

    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 627
    const/16 v6, 0x2803

    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 628
    invoke-interface {p1, v8, v8, v8, v8}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 629
    const/16 v6, 0xde1

    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 630
    const/16 v6, 0xbe2

    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 631
    const/16 v6, 0xde1

    invoke-interface {p1, v6, v9}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 632
    const/16 v6, 0x1200

    invoke-interface {p1, v10, v6, v0, v9}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    .line 633
    const/16 v6, 0x1201

    invoke-interface {p1, v10, v6, v1, v9}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    .line 634
    const/16 v6, 0x1202

    invoke-interface {p1, v10, v6, v4, v9}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    .line 635
    const/16 v6, 0x1600

    invoke-interface {p1, v10, v6, v2, v9}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    .line 636
    const/16 v6, 0x1601

    invoke-interface {p1, v10, v6, v3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialf(IIF)V

    .line 670
    :goto_0
    return-void

    .line 638
    :cond_1
    iget-object v6, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mModel:Lcom/oppo/model/ms3d/MsModel;
    invoke-static {v6}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$500(Lcom/oppo/widget/Oppo3DLomoCmView;)Lcom/oppo/model/ms3d/MsModel;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/oppo/model/ms3d/MsModel;->getMaterial(I)Lcom/oppo/model/ms3d/MsMaterial;

    move-result-object v5

    .line 640
    .local v5, msMaterial:Lcom/oppo/model/ms3d/MsMaterial;
    invoke-virtual {v5}, Lcom/oppo/model/ms3d/MsMaterial;->getTransparency()F

    move-result v6

    cmpg-float v6, v6, v8

    if-ltz v6, :cond_2

    invoke-virtual {v5}, Lcom/oppo/model/ms3d/MsMaterial;->getMode()S

    move-result v6

    and-int/lit8 v6, v6, 0x40

    if-eqz v6, :cond_5

    .line 642
    :cond_2
    const/16 v6, 0xbe2

    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 643
    const/16 v6, 0x302

    const/16 v7, 0x303

    invoke-interface {p1, v6, v7}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 644
    invoke-virtual {v5}, Lcom/oppo/model/ms3d/MsMaterial;->getTransparency()F

    move-result v6

    invoke-interface {p1, v8, v8, v8, v6}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 645
    const/16 v6, 0xb52

    invoke-interface {p1, v6, v11}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelx(II)V

    .line 647
    iget-object v6, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mModel:Lcom/oppo/model/ms3d/MsModel;
    invoke-static {v6}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$500(Lcom/oppo/widget/Oppo3DLomoCmView;)Lcom/oppo/model/ms3d/MsModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oppo/model/ms3d/MsModel;->getTransparencyMode()I

    move-result v6

    if-nez v6, :cond_4

    .line 648
    invoke-interface {p1, v9}, Ljavax/microedition/khronos/opengles/GL10;->glDepthMask(Z)V

    .line 649
    const/16 v6, 0xbc0

    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 650
    const/16 v6, 0x204

    const/4 v7, 0x0

    invoke-interface {p1, v6, v7}, Ljavax/microedition/khronos/opengles/GL10;->glAlphaFunc(IF)V

    .line 662
    :cond_3
    :goto_1
    const/16 v6, 0x1200

    invoke-virtual {v5}, Lcom/oppo/model/ms3d/MsMaterial;->getAmbient()[F

    move-result-object v7

    invoke-interface {p1, v10, v6, v7, v9}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    .line 663
    const/16 v6, 0x1201

    invoke-virtual {v5}, Lcom/oppo/model/ms3d/MsMaterial;->getDiffuse()[F

    move-result-object v7

    invoke-interface {p1, v10, v6, v7, v9}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    .line 664
    const/16 v6, 0x1202

    invoke-virtual {v5}, Lcom/oppo/model/ms3d/MsMaterial;->getSpecular()[F

    move-result-object v7

    invoke-interface {p1, v10, v6, v7, v9}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    .line 666
    const/16 v6, 0x1600

    invoke-virtual {v5}, Lcom/oppo/model/ms3d/MsMaterial;->getEmissive()[F

    move-result-object v7

    invoke-interface {p1, v10, v6, v7, v9}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    .line 668
    const/16 v6, 0x1601

    invoke-virtual {v5}, Lcom/oppo/model/ms3d/MsMaterial;->getShininess()F

    move-result v7

    invoke-interface {p1, v10, v6, v7}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialf(IIF)V

    goto :goto_0

    .line 651
    :cond_4
    iget-object v6, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mModel:Lcom/oppo/model/ms3d/MsModel;
    invoke-static {v6}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$500(Lcom/oppo/widget/Oppo3DLomoCmView;)Lcom/oppo/model/ms3d/MsModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oppo/model/ms3d/MsModel;->getTransparencyMode()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 652
    invoke-interface {p1, v11}, Ljavax/microedition/khronos/opengles/GL10;->glDepthMask(Z)V

    .line 653
    const/16 v6, 0xbc0

    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 654
    const/16 v6, 0x204

    iget-object v7, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mModel:Lcom/oppo/model/ms3d/MsModel;
    invoke-static {v7}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$500(Lcom/oppo/widget/Oppo3DLomoCmView;)Lcom/oppo/model/ms3d/MsModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/oppo/model/ms3d/MsModel;->getAlphaRef()F

    move-result v7

    invoke-interface {p1, v6, v7}, Ljavax/microedition/khronos/opengles/GL10;->glAlphaFunc(IF)V

    goto :goto_1

    .line 657
    :cond_5
    const/16 v6, 0xbe2

    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 658
    invoke-interface {p1, v8, v8, v8, v8}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 659
    const/16 v6, 0xb52

    invoke-interface {p1, v6, v9}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelx(II)V

    goto :goto_1

    .line 618
    nop

    :array_0
    .array-data 0x4
        0xcdt 0xcct 0x4ct 0x3et
        0xcdt 0xcct 0x4ct 0x3et
        0xcdt 0xcct 0x4ct 0x3et
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 619
    :array_1
    .array-data 0x4
        0xcdt 0xcct 0x4ct 0x3ft
        0xcdt 0xcct 0x4ct 0x3ft
        0xcdt 0xcct 0x4ct 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 620
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 621
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private calculatePostion()V
    .locals 6

    .prologue
    const/high16 v5, 0x4000

    const/high16 v4, 0x3f80

    .line 488
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mFrame:F
    invoke-static {v0}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$2000(Lcom/oppo/widget/Oppo3DLomoCmView;)F

    move-result v0

    invoke-static {}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$2100()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mFrame:F
    invoke-static {v0}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$2000(Lcom/oppo/widget/Oppo3DLomoCmView;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 489
    const-string v0, "Oppo3DLomoCmView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m3DX--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->m3DX:F
    invoke-static {v2}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$900(Lcom/oppo/widget/Oppo3DLomoCmView;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "m3DY--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->m3DY:F
    invoke-static {v2}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$1100(Lcom/oppo/widget/Oppo3DLomoCmView;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    invoke-static {}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$2300()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 492
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    iget-object v1, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mFrame:F
    invoke-static {v1}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$2000(Lcom/oppo/widget/Oppo3DLomoCmView;)F

    move-result v1

    invoke-static {}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$2100()F

    move-result v2

    div-float/2addr v1, v2

    add-float/2addr v1, v4

    #setter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mScaleX:F
    invoke-static {v0, v1}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$202(Lcom/oppo/widget/Oppo3DLomoCmView;F)F

    .line 493
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    iget-object v1, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mFrame:F
    invoke-static {v1}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$2000(Lcom/oppo/widget/Oppo3DLomoCmView;)F

    move-result v1

    invoke-static {}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$2100()F

    move-result v2

    div-float/2addr v1, v2

    add-float/2addr v1, v4

    #setter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mScaleY:F
    invoke-static {v0, v1}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$302(Lcom/oppo/widget/Oppo3DLomoCmView;F)F

    .line 494
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    iget-object v1, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->m3DX:F
    invoke-static {v1}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$900(Lcom/oppo/widget/Oppo3DLomoCmView;)F

    move-result v1

    iget-object v2, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->MODEL_WIDTH_PORTRAIT:F
    invoke-static {v2}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$800(Lcom/oppo/widget/Oppo3DLomoCmView;)F

    move-result v2

    div-float/2addr v2, v5

    iget-object v3, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mScaleX:F
    invoke-static {v3}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$200(Lcom/oppo/widget/Oppo3DLomoCmView;)F

    move-result v3

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    #setter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mTransferX:F
    invoke-static {v0, v1}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$1602(Lcom/oppo/widget/Oppo3DLomoCmView;F)F

    .line 495
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    iget-object v1, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->m3DY:F
    invoke-static {v1}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$1100(Lcom/oppo/widget/Oppo3DLomoCmView;)F

    move-result v1

    iget-object v2, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->MODEL_HEIGHT_PORTRAIT:F
    invoke-static {v2}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$2400(Lcom/oppo/widget/Oppo3DLomoCmView;)F

    move-result v2

    div-float/2addr v2, v5

    iget-object v3, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mScaleY:F
    invoke-static {v3}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$300(Lcom/oppo/widget/Oppo3DLomoCmView;)F

    move-result v3

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    #setter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mTransferY:F
    invoke-static {v0, v1}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$1702(Lcom/oppo/widget/Oppo3DLomoCmView;F)F

    .line 496
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    iget-object v1, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->m3DZ:F
    invoke-static {v1}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$2500(Lcom/oppo/widget/Oppo3DLomoCmView;)F

    move-result v1

    #setter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mTransferZ:F
    invoke-static {v0, v1}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$1802(Lcom/oppo/widget/Oppo3DLomoCmView;F)F

    .line 519
    :cond_0
    :goto_0
    return-void

    .line 497
    :cond_1
    invoke-static {}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$2300()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 498
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    iget-object v1, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mFrame:F
    invoke-static {v1}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$2000(Lcom/oppo/widget/Oppo3DLomoCmView;)F

    move-result v1

    invoke-static {}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$2100()F

    move-result v2

    div-float/2addr v1, v2

    add-float/2addr v1, v4

    #setter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mScaleX:F
    invoke-static {v0, v1}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$202(Lcom/oppo/widget/Oppo3DLomoCmView;F)F

    .line 499
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    iget-object v1, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mFrame:F
    invoke-static {v1}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$2000(Lcom/oppo/widget/Oppo3DLomoCmView;)F

    move-result v1

    invoke-static {}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$2100()F

    move-result v2

    div-float/2addr v1, v2

    add-float/2addr v1, v4

    #setter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mScaleY:F
    invoke-static {v0, v1}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$302(Lcom/oppo/widget/Oppo3DLomoCmView;F)F

    .line 501
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    iget-object v1, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->m3DX:F
    invoke-static {v1}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$900(Lcom/oppo/widget/Oppo3DLomoCmView;)F

    move-result v1

    iget-object v2, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->MODEL_WIDTH_PORTRAIT:F
    invoke-static {v2}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$800(Lcom/oppo/widget/Oppo3DLomoCmView;)F

    move-result v2

    div-float/2addr v2, v5

    iget-object v3, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mScaleX:F
    invoke-static {v3}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$200(Lcom/oppo/widget/Oppo3DLomoCmView;)F

    move-result v3

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    #setter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mTransferX:F
    invoke-static {v0, v1}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$1602(Lcom/oppo/widget/Oppo3DLomoCmView;F)F

    .line 502
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    iget-object v1, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->m3DY:F
    invoke-static {v1}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$1100(Lcom/oppo/widget/Oppo3DLomoCmView;)F

    move-result v1

    iget-object v2, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->MODEL_HEIGHT_PORTRAIT:F
    invoke-static {v2}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$2400(Lcom/oppo/widget/Oppo3DLomoCmView;)F

    move-result v2

    div-float/2addr v2, v5

    iget-object v3, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mScaleY:F
    invoke-static {v3}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$300(Lcom/oppo/widget/Oppo3DLomoCmView;)F

    move-result v3

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    #setter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mTransferY:F
    invoke-static {v0, v1}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$1702(Lcom/oppo/widget/Oppo3DLomoCmView;F)F

    .line 503
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    iget-object v1, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->m3DZ:F
    invoke-static {v1}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$2500(Lcom/oppo/widget/Oppo3DLomoCmView;)F

    move-result v1

    #setter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mTransferZ:F
    invoke-static {v0, v1}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$1802(Lcom/oppo/widget/Oppo3DLomoCmView;F)F

    goto :goto_0

    .line 504
    :cond_2
    invoke-static {}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$2300()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 505
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    iget-object v1, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mFrame:F
    invoke-static {v1}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$2000(Lcom/oppo/widget/Oppo3DLomoCmView;)F

    move-result v1

    invoke-static {}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$2100()F

    move-result v2

    div-float/2addr v1, v2

    add-float/2addr v1, v4

    #setter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mScaleX:F
    invoke-static {v0, v1}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$202(Lcom/oppo/widget/Oppo3DLomoCmView;F)F

    .line 506
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    iget-object v1, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mFrame:F
    invoke-static {v1}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$2000(Lcom/oppo/widget/Oppo3DLomoCmView;)F

    move-result v1

    invoke-static {}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$2100()F

    move-result v2

    div-float/2addr v1, v2

    add-float/2addr v1, v4

    #setter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mScaleY:F
    invoke-static {v0, v1}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$302(Lcom/oppo/widget/Oppo3DLomoCmView;F)F

    .line 507
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    iget-object v1, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->m3DX:F
    invoke-static {v1}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$900(Lcom/oppo/widget/Oppo3DLomoCmView;)F

    move-result v1

    iget-object v2, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->MODEL_WIDTH_PORTRAIT:F
    invoke-static {v2}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$800(Lcom/oppo/widget/Oppo3DLomoCmView;)F

    move-result v2

    div-float/2addr v2, v5

    iget-object v3, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mScaleX:F
    invoke-static {v3}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$200(Lcom/oppo/widget/Oppo3DLomoCmView;)F

    move-result v3

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    #setter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mTransferX:F
    invoke-static {v0, v1}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$1602(Lcom/oppo/widget/Oppo3DLomoCmView;F)F

    .line 508
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    iget-object v1, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->m3DY:F
    invoke-static {v1}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$1100(Lcom/oppo/widget/Oppo3DLomoCmView;)F

    move-result v1

    iget-object v2, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->MODEL_HEIGHT_PORTRAIT:F
    invoke-static {v2}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$2400(Lcom/oppo/widget/Oppo3DLomoCmView;)F

    move-result v2

    div-float/2addr v2, v5

    iget-object v3, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mScaleY:F
    invoke-static {v3}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$300(Lcom/oppo/widget/Oppo3DLomoCmView;)F

    move-result v3

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    #setter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mTransferY:F
    invoke-static {v0, v1}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$1702(Lcom/oppo/widget/Oppo3DLomoCmView;F)F

    .line 509
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    iget-object v1, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->m3DZ:F
    invoke-static {v1}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$2500(Lcom/oppo/widget/Oppo3DLomoCmView;)F

    move-result v1

    #setter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mTransferZ:F
    invoke-static {v0, v1}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$1802(Lcom/oppo/widget/Oppo3DLomoCmView;F)F

    goto/16 :goto_0

    .line 510
    :cond_3
    invoke-static {}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$2300()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 511
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    iget-object v1, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mFrame:F
    invoke-static {v1}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$2000(Lcom/oppo/widget/Oppo3DLomoCmView;)F

    move-result v1

    invoke-static {}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$2100()F

    move-result v2

    div-float/2addr v1, v2

    add-float/2addr v1, v4

    #setter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mScaleX:F
    invoke-static {v0, v1}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$202(Lcom/oppo/widget/Oppo3DLomoCmView;F)F

    .line 512
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    iget-object v1, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mFrame:F
    invoke-static {v1}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$2000(Lcom/oppo/widget/Oppo3DLomoCmView;)F

    move-result v1

    invoke-static {}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$2100()F

    move-result v2

    div-float/2addr v1, v2

    add-float/2addr v1, v4

    #setter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mScaleY:F
    invoke-static {v0, v1}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$302(Lcom/oppo/widget/Oppo3DLomoCmView;F)F

    .line 513
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    iget-object v1, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->m3DX:F
    invoke-static {v1}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$900(Lcom/oppo/widget/Oppo3DLomoCmView;)F

    move-result v1

    iget-object v2, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->MODEL_WIDTH_PORTRAIT:F
    invoke-static {v2}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$800(Lcom/oppo/widget/Oppo3DLomoCmView;)F

    move-result v2

    div-float/2addr v2, v5

    iget-object v3, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mScaleX:F
    invoke-static {v3}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$200(Lcom/oppo/widget/Oppo3DLomoCmView;)F

    move-result v3

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    #setter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mTransferX:F
    invoke-static {v0, v1}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$1602(Lcom/oppo/widget/Oppo3DLomoCmView;F)F

    .line 514
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    iget-object v1, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->m3DY:F
    invoke-static {v1}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$1100(Lcom/oppo/widget/Oppo3DLomoCmView;)F

    move-result v1

    iget-object v2, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->MODEL_HEIGHT_PORTRAIT:F
    invoke-static {v2}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$2400(Lcom/oppo/widget/Oppo3DLomoCmView;)F

    move-result v2

    div-float/2addr v2, v5

    iget-object v3, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mScaleY:F
    invoke-static {v3}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$300(Lcom/oppo/widget/Oppo3DLomoCmView;)F

    move-result v3

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    #setter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mTransferY:F
    invoke-static {v0, v1}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$1702(Lcom/oppo/widget/Oppo3DLomoCmView;F)F

    .line 515
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    iget-object v1, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->m3DZ:F
    invoke-static {v1}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$2500(Lcom/oppo/widget/Oppo3DLomoCmView;)F

    move-result v1

    #setter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mTransferZ:F
    invoke-static {v0, v1}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$1802(Lcom/oppo/widget/Oppo3DLomoCmView;F)F

    goto/16 :goto_0
.end method

.method private drawEnd()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 522
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mFrame:F
    invoke-static {v0}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$2000(Lcom/oppo/widget/Oppo3DLomoCmView;)F

    move-result v0

    invoke-static {}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$2100()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mCondition:I
    invoke-static {v0}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$1900(Lcom/oppo/widget/Oppo3DLomoCmView;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 524
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    iget-object v0, v0, Lcom/oppo/widget/Oppo3DLomoCmView;->mOppoLomoCmView:Lcom/oppo/widget/Oppo3DLomoCmView;

    invoke-virtual {v0}, Lcom/oppo/widget/Oppo3DLomoCmView;->stopAnimate()V

    .line 525
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    invoke-static {v0}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$2008(Lcom/oppo/widget/Oppo3DLomoCmView;)F

    .line 526
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #setter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mCondition:I
    invoke-static {v0, v2}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$1902(Lcom/oppo/widget/Oppo3DLomoCmView;I)I

    .line 532
    :cond_0
    :goto_0
    return-void

    .line 527
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mFrame:F
    invoke-static {v0}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$2000(Lcom/oppo/widget/Oppo3DLomoCmView;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mCondition:I
    invoke-static {v0}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$1900(Lcom/oppo/widget/Oppo3DLomoCmView;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 528
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    iget-object v0, v0, Lcom/oppo/widget/Oppo3DLomoCmView;->mOppoLomoCmView:Lcom/oppo/widget/Oppo3DLomoCmView;

    invoke-virtual {v0}, Lcom/oppo/widget/Oppo3DLomoCmView;->stopAnimate()V

    .line 529
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    invoke-static {v0}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$2010(Lcom/oppo/widget/Oppo3DLomoCmView;)F

    .line 530
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #setter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mCondition:I
    invoke-static {v0, v2}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$1902(Lcom/oppo/widget/Oppo3DLomoCmView;I)I

    goto :goto_0
.end method

.method private drawModel(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .parameter "gl"

    .prologue
    const/16 v3, 0x4000

    const/4 v2, 0x0

    .line 420
    const/16 v0, 0xb50

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 421
    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 422
    const/16 v0, 0x1203

    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mLightPos:[F

    invoke-interface {p1, v3, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(II[FI)V

    .line 428
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mNeedupdateTexture:Z
    invoke-static {v0}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$1500(Lcom/oppo/widget/Oppo3DLomoCmView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    invoke-direct {p0, p1}, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->updateTexture(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 430
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #setter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mNeedupdateTexture:Z
    invoke-static {v0, v2}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$1502(Lcom/oppo/widget/Oppo3DLomoCmView;Z)Z

    .line 433
    :cond_0
    invoke-direct {p0}, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->updateFrame()V

    .line 434
    invoke-direct {p0}, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->calculatePostion()V

    .line 435
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->matTrans:Lcom/oppo/model/lib/Matrix4f;
    invoke-static {v0}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$100(Lcom/oppo/widget/Oppo3DLomoCmView;)Lcom/oppo/model/lib/Matrix4f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/model/lib/Matrix4f;->setIdentity()V

    .line 436
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->matTrans:Lcom/oppo/model/lib/Matrix4f;
    invoke-static {v0}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$100(Lcom/oppo/widget/Oppo3DLomoCmView;)Lcom/oppo/model/lib/Matrix4f;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mTransferX:F
    invoke-static {v1}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$1600(Lcom/oppo/widget/Oppo3DLomoCmView;)F

    move-result v1

    iget-object v2, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mTransferY:F
    invoke-static {v2}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$1700(Lcom/oppo/widget/Oppo3DLomoCmView;)F

    move-result v2

    iget-object v3, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mTransferZ:F
    invoke-static {v3}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$1800(Lcom/oppo/widget/Oppo3DLomoCmView;)F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/oppo/model/lib/Matrix4f;->setTranslation(FFF)V

    .line 438
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mMatModel:Lcom/oppo/model/lib/Matrix4f;

    iget-object v1, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->matTrans:Lcom/oppo/model/lib/Matrix4f;
    invoke-static {v1}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$100(Lcom/oppo/widget/Oppo3DLomoCmView;)Lcom/oppo/model/lib/Matrix4f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/model/lib/Matrix4f;->set(Lcom/oppo/model/lib/Matrix4f;)V

    .line 439
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mMatModel:Lcom/oppo/model/lib/Matrix4f;

    invoke-virtual {v0}, Lcom/oppo/model/lib/Matrix4f;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf(Ljava/nio/FloatBuffer;)V

    .line 440
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mModel:Lcom/oppo/model/ms3d/MsModel;
    invoke-static {v0}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$500(Lcom/oppo/widget/Oppo3DLomoCmView;)Lcom/oppo/model/ms3d/MsModel;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mScaleX:F
    invoke-static {v2}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$200(Lcom/oppo/widget/Oppo3DLomoCmView;)F

    move-result v2

    iget-object v3, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mScaleY:F
    invoke-static {v3}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$300(Lcom/oppo/widget/Oppo3DLomoCmView;)F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/oppo/model/ms3d/MsModel;->fillRenderBuffer(IFF)V

    .line 442
    invoke-direct {p0, p1}, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->render(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 443
    invoke-direct {p0}, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->drawEnd()V

    .line 444
    return-void
.end method

.method private initPosition()V
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    iget-object v1, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mInit3DX:F
    invoke-static {v1}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$1000(Lcom/oppo/widget/Oppo3DLomoCmView;)F

    move-result v1

    #setter for: Lcom/oppo/widget/Oppo3DLomoCmView;->m3DX:F
    invoke-static {v0, v1}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$902(Lcom/oppo/widget/Oppo3DLomoCmView;F)F

    .line 374
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    iget-object v1, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mInit3DY:F
    invoke-static {v1}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$1200(Lcom/oppo/widget/Oppo3DLomoCmView;)F

    move-result v1

    #setter for: Lcom/oppo/widget/Oppo3DLomoCmView;->m3DY:F
    invoke-static {v0, v1}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$1102(Lcom/oppo/widget/Oppo3DLomoCmView;F)F

    .line 375
    return-void
.end method

.method private render(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 11
    .parameter "gl"

    .prologue
    const/high16 v10, 0x3f00

    const v9, 0x8078

    const/16 v8, 0x1406

    const/16 v7, 0xde1

    const/4 v6, 0x0

    .line 568
    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    invoke-interface {p1, v4, v10, v10, v5}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 569
    const v4, 0x8074

    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 571
    const v4, 0x8075

    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 574
    iget-object v4, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mModel:Lcom/oppo/model/ms3d/MsModel;
    invoke-static {v4}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$500(Lcom/oppo/widget/Oppo3DLomoCmView;)Lcom/oppo/model/ms3d/MsModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oppo/model/ms3d/MsModel;->getNumGroups()I

    move-result v0

    .line 575
    .local v0, groups:I
    const/4 v2, 0x0

    .line 577
    .local v2, msGroup:Lcom/oppo/model/ms3d/MsGroup;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 578
    iget-object v4, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mModel:Lcom/oppo/model/ms3d/MsModel;
    invoke-static {v4}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$500(Lcom/oppo/widget/Oppo3DLomoCmView;)Lcom/oppo/model/ms3d/MsModel;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/oppo/model/ms3d/MsModel;->getNumTriangles(I)I

    move-result v3

    .line 579
    .local v3, triangle:I
    iget-object v4, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mModel:Lcom/oppo/model/ms3d/MsModel;
    invoke-static {v4}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$500(Lcom/oppo/widget/Oppo3DLomoCmView;)Lcom/oppo/model/ms3d/MsModel;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/oppo/model/ms3d/MsModel;->getGroup(I)Lcom/oppo/model/ms3d/MsGroup;

    move-result-object v2

    .line 580
    if-nez v3, :cond_0

    .line 577
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 585
    :cond_0
    invoke-virtual {v2}, Lcom/oppo/model/ms3d/MsGroup;->getMaterialIndex()B

    move-result v4

    invoke-direct {p0, p1, v4}, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->bindMaterial(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 588
    invoke-virtual {v2}, Lcom/oppo/model/ms3d/MsGroup;->getTextureId()I

    move-result v4

    if-eqz v4, :cond_1

    .line 589
    invoke-virtual {v2}, Lcom/oppo/model/ms3d/MsGroup;->getTextureId()I

    move-result v4

    invoke-interface {p1, v7, v4}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 591
    invoke-interface {p1, v7}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 593
    invoke-interface {p1, v9}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 594
    const/4 v4, 0x2

    iget-object v5, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mModel:Lcom/oppo/model/ms3d/MsModel;
    invoke-static {v5}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$500(Lcom/oppo/widget/Oppo3DLomoCmView;)Lcom/oppo/model/ms3d/MsModel;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/oppo/model/ms3d/MsModel;->getTextureCoordsBuf(I)Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-interface {p1, v4, v8, v6, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 603
    :goto_2
    iget-object v4, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mModel:Lcom/oppo/model/ms3d/MsModel;
    invoke-static {v4}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$500(Lcom/oppo/widget/Oppo3DLomoCmView;)Lcom/oppo/model/ms3d/MsModel;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/oppo/model/ms3d/MsModel;->getNormalBuf(I)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-interface {p1, v8, v6, v4}, Ljavax/microedition/khronos/opengles/GL10;->glNormalPointer(IILjava/nio/Buffer;)V

    .line 605
    const/4 v4, 0x3

    iget-object v5, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mModel:Lcom/oppo/model/ms3d/MsModel;
    invoke-static {v5}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$500(Lcom/oppo/widget/Oppo3DLomoCmView;)Lcom/oppo/model/ms3d/MsModel;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/oppo/model/ms3d/MsModel;->getVertexBuf(I)Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-interface {p1, v4, v8, v6, v5}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 608
    const/4 v4, 0x4

    mul-int/lit8 v5, v3, 0x3

    invoke-interface {p1, v4, v6, v5}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    goto :goto_1

    .line 598
    :cond_1
    invoke-interface {p1, v7}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 599
    invoke-interface {p1, v9}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    goto :goto_2

    .line 611
    .end local v3           #triangle:I
    :cond_2
    const v4, 0x8074

    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 612
    invoke-interface {p1, v9}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 613
    const v4, 0x8075

    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 614
    invoke-interface {p1, v7}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 615
    return-void
.end method

.method private updateDirtFlag()V
    .locals 2

    .prologue
    .line 535
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mModel:Lcom/oppo/model/ms3d/MsModel;
    invoke-static {v0}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$500(Lcom/oppo/widget/Oppo3DLomoCmView;)Lcom/oppo/model/ms3d/MsModel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oppo/model/ms3d/MsModel;->setDirtFlag(I)V

    .line 536
    return-void
.end method

.method private updateFrame()V
    .locals 7

    .prologue
    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    .line 447
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 448
    .local v1, time:J
    const/4 v0, 0x0

    .line 449
    .local v0, mTempFrame:F
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mCondition:I
    invoke-static {v3}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$1900(Lcom/oppo/widget/Oppo3DLomoCmView;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 485
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 451
    :pswitch_1
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mFrame:F
    invoke-static {v3}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$2000(Lcom/oppo/widget/Oppo3DLomoCmView;)F

    move-result v3

    invoke-static {}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$2100()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_0

    .line 452
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    invoke-static {v3}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$2008(Lcom/oppo/widget/Oppo3DLomoCmView;)F

    .line 453
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    iget-object v3, v3, Lcom/oppo/widget/Oppo3DLomoCmView;->mOppoLomoCmView:Lcom/oppo/widget/Oppo3DLomoCmView;

    invoke-virtual {v3}, Lcom/oppo/widget/Oppo3DLomoCmView;->requestRender()V

    goto :goto_0

    .line 458
    :pswitch_2
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mFrame:F
    invoke-static {v3}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$2000(Lcom/oppo/widget/Oppo3DLomoCmView;)F

    move-result v3

    cmpl-float v3, v3, v6

    if-ltz v3, :cond_0

    .line 459
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mFrame:F
    invoke-static {v3}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$2000(Lcom/oppo/widget/Oppo3DLomoCmView;)F

    move-result v3

    invoke-static {}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$2100()F

    move-result v4

    add-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    .line 460
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    invoke-static {v3}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$2010(Lcom/oppo/widget/Oppo3DLomoCmView;)F

    .line 461
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #setter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mLastTime:J
    invoke-static {v3, v1, v2}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$2202(Lcom/oppo/widget/Oppo3DLomoCmView;J)J

    .line 477
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    iget-object v3, v3, Lcom/oppo/widget/Oppo3DLomoCmView;->mOppoLomoCmView:Lcom/oppo/widget/Oppo3DLomoCmView;

    invoke-virtual {v3}, Lcom/oppo/widget/Oppo3DLomoCmView;->requestRender()V

    goto :goto_0

    .line 463
    :cond_2
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mLastTime:J
    invoke-static {v3}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$2200(Lcom/oppo/widget/Oppo3DLomoCmView;)J

    move-result-wide v3

    sub-long v3, v1, v3

    long-to-float v3, v3

    const/high16 v4, 0x447a

    div-float/2addr v3, v4

    const/high16 v4, 0x4240

    mul-float v0, v3, v4

    .line 465
    cmpg-float v3, v0, v5

    if-gez v3, :cond_3

    .line 466
    const/high16 v0, 0x3f80

    .line 471
    :goto_2
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    invoke-static {v3, v0}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$2024(Lcom/oppo/widget/Oppo3DLomoCmView;F)F

    .line 472
    const-string v3, "Oppo3DLomoCmView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateFrame() mTempFrame= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mFrame= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mFrame:F
    invoke-static {v5}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$2000(Lcom/oppo/widget/Oppo3DLomoCmView;)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mFrame:F
    invoke-static {v3}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$2000(Lcom/oppo/widget/Oppo3DLomoCmView;)F

    move-result v3

    cmpg-float v3, v3, v6

    if-gez v3, :cond_1

    .line 474
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #setter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mFrame:F
    invoke-static {v3, v6}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$2002(Lcom/oppo/widget/Oppo3DLomoCmView;F)F

    goto :goto_1

    .line 468
    :cond_3
    const/high16 v0, 0x3f80

    goto :goto_2

    .line 449
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateTexture(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 7
    .parameter "gl"

    .prologue
    const/4 v6, 0x0

    .line 378
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mFrontTextureId:I
    invoke-static {v3}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$1300(Lcom/oppo/widget/Oppo3DLomoCmView;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 379
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mFrontTextureId:I
    invoke-static {v3}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$1300(Lcom/oppo/widget/Oppo3DLomoCmView;)I

    move-result v3

    invoke-static {p1, v3}, Lcom/oppo/model/lib/TextureFactory;->deleteTexture(Ljavax/microedition/khronos/opengles/GL10;I)Z

    .line 382
    :cond_0
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mFrontTexture:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$1400(Lcom/oppo/widget/Oppo3DLomoCmView;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 383
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    iget-object v4, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mFrontTexture:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$1400(Lcom/oppo/widget/Oppo3DLomoCmView;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v4, p1, v5}, Lcom/oppo/model/lib/TextureFactory;->getTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;)I

    move-result v4

    #setter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mFrontTextureId:I
    invoke-static {v3, v4}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$1302(Lcom/oppo/widget/Oppo3DLomoCmView;I)I

    .line 389
    :goto_0
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mModel:Lcom/oppo/model/ms3d/MsModel;
    invoke-static {v3}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$500(Lcom/oppo/widget/Oppo3DLomoCmView;)Lcom/oppo/model/ms3d/MsModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oppo/model/ms3d/MsModel;->getNumGroups()I

    move-result v0

    .line 391
    .local v0, groups:I
    const/4 v2, 0x0

    .line 392
    .local v2, textureIndex:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 393
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mModel:Lcom/oppo/model/ms3d/MsModel;
    invoke-static {v3}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$500(Lcom/oppo/widget/Oppo3DLomoCmView;)Lcom/oppo/model/ms3d/MsModel;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/oppo/model/ms3d/MsModel;->getGroup(I)Lcom/oppo/model/ms3d/MsGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oppo/model/ms3d/MsGroup;->getTextureIndex()I

    move-result v2

    .line 395
    if-nez v2, :cond_2

    .line 396
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mModel:Lcom/oppo/model/ms3d/MsModel;
    invoke-static {v3}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$500(Lcom/oppo/widget/Oppo3DLomoCmView;)Lcom/oppo/model/ms3d/MsModel;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/oppo/model/ms3d/MsModel;->getGroup(I)Lcom/oppo/model/ms3d/MsGroup;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mFrontTextureId:I
    invoke-static {v4}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$1300(Lcom/oppo/widget/Oppo3DLomoCmView;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/oppo/model/ms3d/MsGroup;->setTextureId(I)V

    .line 392
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 385
    .end local v0           #groups:I
    .end local v1           #i:I
    .end local v2           #textureIndex:I
    :cond_1
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    iget-object v4, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$600()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v6

    invoke-static {v4, p1, v5}, Lcom/oppo/model/lib/TextureFactory;->getTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;)I

    move-result v4

    #setter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mFrontTextureId:I
    invoke-static {v3, v4}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$1302(Lcom/oppo/widget/Oppo3DLomoCmView;I)I

    goto :goto_0

    .line 398
    .restart local v0       #groups:I
    .restart local v1       #i:I
    .restart local v2       #textureIndex:I
    :cond_2
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mModel:Lcom/oppo/model/ms3d/MsModel;
    invoke-static {v3}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$500(Lcom/oppo/widget/Oppo3DLomoCmView;)Lcom/oppo/model/ms3d/MsModel;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/oppo/model/ms3d/MsModel;->getGroup(I)Lcom/oppo/model/ms3d/MsGroup;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/oppo/model/ms3d/MsGroup;->setTextureId(I)V

    goto :goto_2

    .line 401
    :cond_3
    return-void
.end method


# virtual methods
.method public getCondition()I
    .locals 3

    .prologue
    .line 562
    const-string v0, "Oppo3DLomoCmView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCondition. mCondition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mCondition:I
    invoke-static {v2}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$1900(Lcom/oppo/widget/Oppo3DLomoCmView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mCondition:I
    invoke-static {v0}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$1900(Lcom/oppo/widget/Oppo3DLomoCmView;)I

    move-result v0

    return v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .parameter "gl"

    .prologue
    .line 405
    const/16 v0, 0x4100

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 406
    invoke-virtual {p0, p1}, Lcom/oppo/widget/Oppo3DGLRenderer;->setUpCamera(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 407
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 408
    invoke-direct {p0, p1}, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->drawModel(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 409
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 410
    invoke-direct {p0}, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->updateDirtFlag()V

    .line 411
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 8
    .parameter "gl"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 338
    const-string v1, "Oppo3DLomoCmView"

    const-string v2, "onSurfaceChanged()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-interface {p1, v4, v4, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 342
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mViewport:[I

    aput v4, v1, v4

    .line 343
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mViewport:[I

    aput v4, v1, v5

    .line 344
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mViewport:[I

    aput p2, v1, v6

    .line 345
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mViewport:[I

    aput p3, v1, v7

    .line 347
    int-to-float v1, p2

    int-to-float v2, p3

    div-float v0, v1, v2

    .line 350
    .local v0, ratio:F
    const-string v1, "Oppo3DLomoCmView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "width="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ratio="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    new-array v1, v7, [F

    iget-object v2, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mvEye:Lcom/oppo/model/lib/Vector3f;

    iget v2, v2, Lcom/oppo/model/lib/Vector3f;->x:F

    aput v2, v1, v4

    iget-object v2, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mvEye:Lcom/oppo/model/lib/Vector3f;

    iget v2, v2, Lcom/oppo/model/lib/Vector3f;->y:F

    aput v2, v1, v5

    iget-object v2, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mvEye:Lcom/oppo/model/lib/Vector3f;

    iget v2, v2, Lcom/oppo/model/lib/Vector3f;->z:F

    aput v2, v1, v6

    iput-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mLightPos:[F

    .line 354
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mvEye:Lcom/oppo/model/lib/Vector3f;

    const/high16 v2, 0x4000

    iget-object v3, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->MODEL_WIDTH_PORTRAIT:F
    invoke-static {v3}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$800(Lcom/oppo/widget/Oppo3DLomoCmView;)F

    move-result v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v0

    const v3, 0x3f9a8279

    mul-float/2addr v2, v3

    iput v2, v1, Lcom/oppo/model/lib/Vector3f;->z:F

    .line 356
    const-string v1, "Oppo3DLomoCmView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mvEye.z="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mvEye:Lcom/oppo/model/lib/Vector3f;

    iget v3, v3, Lcom/oppo/model/lib/Vector3f;->z:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const/16 v1, 0x1701

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 360
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 361
    const/high16 v1, 0x4234

    const/high16 v2, 0x3f80

    const v3, 0x459c4000

    iget-object v4, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mMatProject:Lcom/oppo/model/lib/Matrix4f;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/oppo/model/lib/Matrix4f;->gluPersective(FFFFLcom/oppo/model/lib/Matrix4f;)V

    .line 363
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mMatProject:Lcom/oppo/model/lib/Matrix4f;

    invoke-virtual {v1}, Lcom/oppo/model/lib/Matrix4f;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixf(Ljava/nio/FloatBuffer;)V

    .line 364
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mMatProject:Lcom/oppo/model/lib/Matrix4f;

    iget-object v2, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mMatrixProjectArray:[F

    invoke-virtual {v1, v2}, Lcom/oppo/model/lib/Matrix4f;->fillFloatArray([F)V

    .line 366
    const/16 v1, 0x1700

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 368
    invoke-direct {p0}, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->initPosition()V

    .line 370
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3
    .parameter "gl"
    .parameter "config"

    .prologue
    const/4 v2, 0x0

    .line 321
    const-string v0, "Oppo3DLomoCmView"

    const-string v1, "onSurfaceCreated()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const/16 v0, 0xbd0

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 324
    const/16 v0, 0xc50

    const/16 v1, 0x1102

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    .line 325
    invoke-interface {p1, v2, v2, v2, v2}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 326
    const/16 v0, 0x1d01

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 327
    const/16 v0, 0xb44

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 328
    const/16 v0, 0x405

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glCullFace(I)V

    .line 329
    const/16 v0, 0xb71

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 330
    const/16 v0, 0xb50

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 331
    const/16 v0, 0xbe2

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 333
    return-void
.end method

.method public setCondition(I)V
    .locals 3
    .parameter "condition"

    .prologue
    .line 545
    const-string v0, "Oppo3DLomoCmView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setCondition. condition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #setter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mCondition:I
    invoke-static {v0, p1}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$1902(Lcom/oppo/widget/Oppo3DLomoCmView;I)I

    .line 548
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mCondition:I
    invoke-static {v0}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$1900(Lcom/oppo/widget/Oppo3DLomoCmView;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 549
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    const/4 v1, 0x0

    #setter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mFrame:F
    invoke-static {v0, v1}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$2002(Lcom/oppo/widget/Oppo3DLomoCmView;F)F

    .line 553
    :cond_0
    :goto_0
    return-void

    .line 550
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    #getter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mCondition:I
    invoke-static {v0}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$1900(Lcom/oppo/widget/Oppo3DLomoCmView;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 551
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DLomoCmView$Oppo3DLomoCmRenderer;->this$0:Lcom/oppo/widget/Oppo3DLomoCmView;

    invoke-static {}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$2100()F

    move-result v1

    const/high16 v2, 0x3f80

    add-float/2addr v1, v2

    #setter for: Lcom/oppo/widget/Oppo3DLomoCmView;->mFrame:F
    invoke-static {v0, v1}, Lcom/oppo/widget/Oppo3DLomoCmView;->access$2002(Lcom/oppo/widget/Oppo3DLomoCmView;F)F

    goto :goto_0
.end method
