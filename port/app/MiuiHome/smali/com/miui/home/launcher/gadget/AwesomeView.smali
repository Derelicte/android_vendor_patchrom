.class public Lcom/miui/home/launcher/gadget/AwesomeView;
.super Landroid/view/View;
.source "AwesomeView.java"


# instance fields
.field private mRoot:Lmiui/app/screenelement/ScreenElementRoot;

.field private mTargetDensity:I

.field private mUpdateInterval:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/gadget/AwesomeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/app/screenelement/ScreenElementRoot;->finish()V

    .line 89
    :cond_0
    return-void
.end method

.method public getUpdateInterval()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/miui/home/launcher/gadget/AwesomeView;->mUpdateInterval:I

    return v0
.end method

.method public load(Lmiui/app/screenelement/ScreenContext;)Z
    .locals 5
    .parameter "elementContext"

    .prologue
    .line 46
    :try_start_0
    iget-object v2, p1, Lmiui/app/screenelement/ScreenContext;->mResourceManager:Lmiui/app/screenelement/ResourceManager;

    invoke-virtual {v2}, Lmiui/app/screenelement/ResourceManager;->getManifestRoot()Lorg/w3c/dom/Element;

    move-result-object v1

    .line 47
    .local v1, root:Lorg/w3c/dom/Element;
    const-string v2, "clock"

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 48
    new-instance v2, Lmiui/app/screenelement/ScreenElementLoadException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad root tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lmiui/app/screenelement/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lmiui/app/screenelement/ScreenElementLoadException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 61
    .end local v1           #root:Lorg/w3c/dom/Element;
    :catch_0
    move-exception v0

    .line 62
    .local v0, e:Lmiui/app/screenelement/ScreenElementLoadException;
    invoke-virtual {v0}, Lmiui/app/screenelement/ScreenElementLoadException;->printStackTrace()V

    .line 66
    .end local v0           #e:Lmiui/app/screenelement/ScreenElementLoadException;
    :goto_0
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 50
    .restart local v1       #root:Lorg/w3c/dom/Element;
    :cond_0
    :try_start_1
    new-instance v2, Lmiui/app/screenelement/ScreenElementRoot;

    invoke-direct {v2, p1}, Lmiui/app/screenelement/ScreenElementRoot;-><init>(Lmiui/app/screenelement/ScreenContext;)V

    iput-object v2, p0, Lcom/miui/home/launcher/gadget/AwesomeView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    .line 51
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/AwesomeView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    iget v3, p0, Lcom/miui/home/launcher/gadget/AwesomeView;->mTargetDensity:I

    invoke-virtual {v2, v3}, Lmiui/app/screenelement/ScreenElementRoot;->setTargetDensity(I)V

    .line 52
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/AwesomeView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v2}, Lmiui/app/screenelement/ScreenElementRoot;->load()Z

    .line 53
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/AwesomeView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v2}, Lmiui/app/screenelement/ScreenElementRoot;->init()V
    :try_end_1
    .catch Lmiui/app/screenelement/ScreenElementLoadException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 55
    :try_start_2
    const-string v2, "update_interval"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/miui/home/launcher/gadget/AwesomeView;->mUpdateInterval:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lmiui/app/screenelement/ScreenElementLoadException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 60
    :goto_2
    const/4 v2, 0x1

    goto :goto_1

    .line 56
    :catch_1
    move-exception v0

    .line 57
    .local v0, e:Ljava/lang/NumberFormatException;
    const v2, 0xea60

    :try_start_3
    iput v2, p0, Lcom/miui/home/launcher/gadget/AwesomeView;->mUpdateInterval:I
    :try_end_3
    .catch Lmiui/app/screenelement/ScreenElementLoadException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 63
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v1           #root:Lorg/w3c/dom/Element;
    :catch_2
    move-exception v0

    .line 64
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 34
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/ScreenElementRoot;->render(Landroid/graphics/Canvas;)V

    .line 37
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/app/screenelement/ScreenElementRoot;->pause()V

    .line 83
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/app/screenelement/ScreenElementRoot;->resume()V

    .line 77
    :cond_0
    return-void
.end method

.method setTargetDensity(I)V
    .locals 0
    .parameter "density"

    .prologue
    .line 98
    iput p1, p0, Lcom/miui/home/launcher/gadget/AwesomeView;->mTargetDensity:I

    .line 99
    return-void
.end method

.method public tick(J)V
    .locals 1
    .parameter "currentTime"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/ScreenElementRoot;->tick(J)V

    .line 95
    :cond_0
    return-void
.end method
