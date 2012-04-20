.class public Lcom/android/browser/MiuiTabControl;
.super Lcom/android/browser/TabControl;
.source "MiuiTabControl.java"


# direct methods
.method constructor <init>(Lcom/android/browser/Controller;)V
    .locals 0
    .parameter "controller"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/android/browser/TabControl;-><init>(Lcom/android/browser/Controller;)V

    .line 12
    return-void
.end method


# virtual methods
.method addPreloadedTab(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/android/browser/TabControl;->addPreloadedTab(Lcom/android/browser/Tab;)V

    .line 17
    iget-object v0, p0, Lcom/android/browser/MiuiTabControl;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->getActionBarController()Lcom/android/browser/ActionBarController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/ActionBarController;->onTabCountChanged()V

    .line 18
    return-void
.end method

.method createNewTab(Landroid/os/Bundle;Z)Lcom/android/browser/Tab;
    .locals 4
    .parameter "state"
    .parameter "privateBrowsing"

    .prologue
    .line 22
    iget-object v3, p0, Lcom/android/browser/MiuiTabControl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 24
    .local v0, size:I
    invoke-virtual {p0}, Lcom/android/browser/MiuiTabControl;->canCreateNewTab()Z

    move-result v3

    if-nez v3, :cond_0

    .line 25
    const/4 v1, 0x0

    .line 36
    :goto_0
    return-object v1

    .line 28
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/browser/MiuiTabControl;->createNewWebView(Z)Landroid/webkit/WebView;

    move-result-object v2

    .line 31
    .local v2, w:Landroid/webkit/WebView;
    new-instance v1, Lcom/android/browser/MiuiTab;

    iget-object v3, p0, Lcom/android/browser/MiuiTabControl;->mController:Lcom/android/browser/Controller;

    invoke-direct {v1, v3, v2, p1}, Lcom/android/browser/MiuiTab;-><init>(Lcom/android/browser/WebViewController;Landroid/webkit/WebView;Landroid/os/Bundle;)V

    .line 32
    .local v1, t:Lcom/android/browser/Tab;
    iget-object v3, p0, Lcom/android/browser/MiuiTabControl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object v3, p0, Lcom/android/browser/MiuiTabControl;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v3}, Lcom/android/browser/Controller;->getActionBarController()Lcom/android/browser/ActionBarController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/browser/ActionBarController;->onTabCountChanged()V

    .line 35
    invoke-virtual {v1}, Lcom/android/browser/Tab;->putInBackground()V

    goto :goto_0
.end method

.method createSnapshotTab(J)Lcom/android/browser/SnapshotTab;
    .locals 2
    .parameter "snapshotId"

    .prologue
    .line 41
    invoke-super {p0, p1, p2}, Lcom/android/browser/TabControl;->createSnapshotTab(J)Lcom/android/browser/SnapshotTab;

    move-result-object v0

    .line 42
    .local v0, t:Lcom/android/browser/SnapshotTab;
    iget-object v1, p0, Lcom/android/browser/MiuiTabControl;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v1}, Lcom/android/browser/Controller;->getActionBarController()Lcom/android/browser/ActionBarController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/ActionBarController;->onTabCountChanged()V

    .line 43
    return-object v0
.end method

.method public bridge synthetic getOnThumbnailUpdatedListener()Lcom/android/browser/TabControl$OnThumbnailUpdatedListener;
    .locals 1

    .prologue
    .line 8
    invoke-super {p0}, Lcom/android/browser/TabControl;->getOnThumbnailUpdatedListener()Lcom/android/browser/TabControl$OnThumbnailUpdatedListener;

    move-result-object v0

    return-object v0
.end method

.method removeTab(Lcom/android/browser/Tab;)Z
    .locals 1
    .parameter "t"

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/android/browser/TabControl;->removeTab(Lcom/android/browser/Tab;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/android/browser/MiuiTabControl;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->getActionBarController()Lcom/android/browser/ActionBarController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/ActionBarController;->onTabCountChanged()V

    .line 50
    const/4 v0, 0x1

    .line 52
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method restoreState(Landroid/os/Bundle;JZZ)V
    .locals 23
    .parameter "inState"
    .parameter "currentId"
    .parameter "restoreIncognitoTabs"
    .parameter "restoreAll"

    .prologue
    .line 59
    const-wide/16 v20, -0x1

    cmp-long v20, p2, v20

    if-nez v20, :cond_1

    .line 125
    :cond_0
    return-void

    .line 62
    :cond_1
    const-string v20, "positions"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v9

    .line 63
    .local v9, ids:[J
    const-wide v11, -0x7fffffffffffffffL

    .line 64
    .local v11, maxId:J
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 65
    .local v19, tabMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/browser/Tab;>;"
    move-object v3, v9

    .local v3, arr$:[J
    array-length v10, v3

    .local v10, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v10, :cond_8

    aget-wide v6, v3, v5

    .line 66
    .local v6, id:J
    cmp-long v20, v6, v11

    if-lez v20, :cond_2

    .line 67
    move-wide v11, v6

    .line 69
    :cond_2
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    .line 70
    .local v8, idkey:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v16

    .line 71
    .local v16, state:Landroid/os/Bundle;
    if-eqz v16, :cond_3

    invoke-virtual/range {v16 .. v16}, Landroid/os/Bundle;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 65
    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 74
    :cond_4
    if-nez p4, :cond_5

    const-string v20, "privateBrowsingEnabled"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_3

    .line 77
    :cond_5
    cmp-long v20, v6, p2

    if-eqz v20, :cond_6

    if-eqz p5, :cond_7

    .line 78
    :cond_6
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/MiuiTabControl;->createNewTab(Landroid/os/Bundle;Z)Lcom/android/browser/Tab;

    move-result-object v17

    .line 79
    .local v17, t:Lcom/android/browser/Tab;
    if-eqz v17, :cond_3

    .line 84
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    cmp-long v20, v6, p2

    if-nez v20, :cond_3

    .line 88
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/browser/MiuiTabControl;->setCurrentTab(Lcom/android/browser/Tab;)Z

    goto :goto_1

    .line 93
    .end local v17           #t:Lcom/android/browser/Tab;
    :cond_7
    new-instance v17, Lcom/android/browser/MiuiTab;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/MiuiTabControl;->mController:Lcom/android/browser/Controller;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/browser/MiuiTab;-><init>(Lcom/android/browser/WebViewController;Landroid/os/Bundle;)V

    .line 94
    .restart local v17       #t:Lcom/android/browser/Tab;
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/MiuiTabControl;->mTabs:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/MiuiTabControl;->mController:Lcom/android/browser/Controller;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/browser/Controller;->getActionBarController()Lcom/android/browser/ActionBarController;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/browser/ActionBarController;->onTabCountChanged()V

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/MiuiTabControl;->mTabQueue:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 104
    .end local v6           #id:J
    .end local v8           #idkey:Ljava/lang/String;
    .end local v16           #state:Landroid/os/Bundle;
    .end local v17           #t:Lcom/android/browser/Tab;
    :cond_8
    const-wide/16 v20, 0x1

    add-long v20, v20, v11

    sput-wide v20, Lcom/android/browser/MiuiTabControl;->sNextId:J

    .line 106
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/MiuiTabControl;->mCurrentTab:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/MiuiTabControl;->getTabCount()I

    move-result v20

    if-lez v20, :cond_9

    .line 108
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/browser/MiuiTabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/browser/MiuiTabControl;->setCurrentTab(Lcom/android/browser/Tab;)Z

    .line 112
    :cond_9
    move-object v3, v9

    array-length v10, v3

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v10, :cond_0

    aget-wide v6, v3, v5

    .line 113
    .restart local v6       #id:J
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/browser/Tab;

    .line 114
    .local v18, tab:Lcom/android/browser/Tab;
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 115
    .local v4, b:Landroid/os/Bundle;
    if-eqz v4, :cond_a

    if-eqz v18, :cond_a

    .line 116
    const-string v20, "parentTab"

    const-wide/16 v21, -0x1

    move-object/from16 v0, v20

    move-wide/from16 v1, v21

    invoke-virtual {v4, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    .line 117
    .local v14, parentId:J
    const-wide/16 v20, -0x1

    cmp-long v20, v14, v20

    if-eqz v20, :cond_a

    .line 118
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/browser/Tab;

    .line 119
    .local v13, parent:Lcom/android/browser/Tab;
    if-eqz v13, :cond_a

    .line 120
    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/android/browser/Tab;->addChildTab(Lcom/android/browser/Tab;)V

    .line 112
    .end local v13           #parent:Lcom/android/browser/Tab;
    .end local v14           #parentId:J
    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method public bridge synthetic setOnThumbnailUpdatedListener(Lcom/android/browser/TabControl$OnThumbnailUpdatedListener;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 8
    invoke-super {p0, p1}, Lcom/android/browser/TabControl;->setOnThumbnailUpdatedListener(Lcom/android/browser/TabControl$OnThumbnailUpdatedListener;)V

    return-void
.end method
