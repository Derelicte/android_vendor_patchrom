.class public Lcom/android/browser/MiuiYellowpagePage;
.super Landroid/app/Fragment;
.source "MiuiYellowpagePage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/MiuiYellowpagePage$1;,
        Lcom/android/browser/MiuiYellowpagePage$OnSiteItemClickListener;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private categoryListViewLandscape:Landroid/widget/LinearLayout;

.field private categoryListViewPortrait:Landroid/widget/LinearLayout;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mOrientation:I

.field private mSiteClickListener:Lcom/android/browser/MiuiYellowpagePage$OnSiteItemClickListener;

.field private mYellowpage:Landroid/widget/ScrollView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/android/browser/MiuiYellowpagePage;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/browser/MiuiYellowpagePage;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/browser/MiuiYellowpagePage;->mOrientation:I

    .line 36
    iput-object v1, p0, Lcom/android/browser/MiuiYellowpagePage;->categoryListViewPortrait:Landroid/widget/LinearLayout;

    .line 37
    iput-object v1, p0, Lcom/android/browser/MiuiYellowpagePage;->categoryListViewLandscape:Landroid/widget/LinearLayout;

    .line 39
    new-instance v0, Lcom/android/browser/MiuiYellowpagePage$OnSiteItemClickListener;

    invoke-direct {v0, p0, v1}, Lcom/android/browser/MiuiYellowpagePage$OnSiteItemClickListener;-><init>(Lcom/android/browser/MiuiYellowpagePage;Lcom/android/browser/MiuiYellowpagePage$1;)V

    iput-object v0, p0, Lcom/android/browser/MiuiYellowpagePage;->mSiteClickListener:Lcom/android/browser/MiuiYellowpagePage$OnSiteItemClickListener;

    .line 41
    return-void
.end method

.method private fillCategoryListView(IZ)Landroid/widget/LinearLayout;
    .locals 21
    .parameter "sitesNumPerRow"
    .parameter "isInternationalVersion"

    .prologue
    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/MiuiYellowpagePage;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/browser/provider/YellowPageDataProvider;->getCategories(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v8

    .line 113
    .local v8, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/browser/provider/YellowPageDataProvider$Category;>;"
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/MiuiYellowpagePage;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 114
    .local v5, categoryListView:Landroid/widget/LinearLayout;
    new-instance v17, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v18, -0x1

    const/16 v19, -0x1

    invoke-direct/range {v17 .. v19}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 119
    new-instance v16, Landroid/graphics/Point;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Point;-><init>()V

    .line 120
    .local v16, size:Landroid/graphics/Point;
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/MiuiYellowpagePage;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 121
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1e

    div-int v15, v17, p1

    .line 123
    .local v15, siteWidth:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v9, v0, :cond_6

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/MiuiYellowpagePage;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x7f040026

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 126
    .local v7, categoryView:Landroid/widget/LinearLayout;
    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 128
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/browser/provider/YellowPageDataProvider$Category;

    .line 130
    .local v4, category:Lcom/android/browser/provider/YellowPageDataProvider$Category;
    const v17, 0x7f0d006a

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 131
    .local v6, categoryNameView:Landroid/widget/TextView;
    iget-object v0, v4, Lcom/android/browser/provider/YellowPageDataProvider$Category;->_title:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 134
    const v17, 0x7f0d006b

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 135
    .local v13, siteListView:Landroid/widget/LinearLayout;
    const/4 v11, 0x0

    .line 136
    .local v11, rowLayout:Landroid/widget/LinearLayout;
    const/4 v10, 0x0

    .local v10, j:I
    :goto_1
    iget-object v0, v4, Lcom/android/browser/provider/YellowPageDataProvider$Category;->_sites:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v10, v0, :cond_5

    .line 137
    iget-object v0, v4, Lcom/android/browser/provider/YellowPageDataProvider$Category;->_sites:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/browser/provider/YellowPageDataProvider$Site;

    .line 139
    .local v12, site:Lcom/android/browser/provider/YellowPageDataProvider$Site;
    rem-int v17, v10, p1

    if-nez v17, :cond_0

    .line 140
    new-instance v11, Landroid/widget/LinearLayout;

    .end local v11           #rowLayout:Landroid/widget/LinearLayout;
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/MiuiYellowpagePage;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 141
    .restart local v11       #rowLayout:Landroid/widget/LinearLayout;
    const/16 v17, 0xf

    const/16 v18, 0x0

    const/16 v19, 0xf

    const/16 v20, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 142
    new-instance v17, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v18, -0x1

    const/16 v19, -0x2

    invoke-direct/range {v17 .. v19}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 146
    invoke-virtual {v13, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 149
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/MiuiYellowpagePage;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x7f040027

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v11, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 151
    .local v14, siteTextView:Landroid/widget/TextView;
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setWidth(I)V

    .line 152
    invoke-virtual {v11, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 153
    iget-object v0, v12, Lcom/android/browser/provider/YellowPageDataProvider$Site;->_title:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    rem-int v17, v10, p1

    if-nez v17, :cond_1

    .line 156
    const v17, 0x7f020087

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 163
    :goto_2
    if-eqz p2, :cond_3

    .line 164
    const/16 v17, 0xf

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 169
    :goto_3
    iget-object v0, v12, Lcom/android/browser/provider/YellowPageDataProvider$Site;->_url:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "null"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 170
    const v17, 0x7f0c0173

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 171
    const v17, 0x7f0c0174

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/MiuiYellowpagePage;->mSiteClickListener:Lcom/android/browser/MiuiYellowpagePage$OnSiteItemClickListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 157
    :cond_1
    rem-int v17, v10, p1

    add-int/lit8 v18, p1, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    iget-object v0, v4, Lcom/android/browser/provider/YellowPageDataProvider$Category;->_sites:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-eq v10, v0, :cond_2

    .line 158
    const v17, 0x7f020086

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_2

    .line 160
    :cond_2
    const v17, 0x7f02008a

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_2

    .line 166
    :cond_3
    const/16 v17, 0x11

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_3

    .line 174
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/MiuiYellowpagePage;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x1060005

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    .line 123
    .end local v12           #site:Lcom/android/browser/provider/YellowPageDataProvider$Site;
    .end local v14           #siteTextView:Landroid/widget/TextView;
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 179
    .end local v4           #category:Lcom/android/browser/provider/YellowPageDataProvider$Category;
    .end local v6           #categoryNameView:Landroid/widget/TextView;
    .end local v7           #categoryView:Landroid/widget/LinearLayout;
    .end local v10           #j:I
    .end local v11           #rowLayout:Landroid/widget/LinearLayout;
    .end local v13           #siteListView:Landroid/widget/LinearLayout;
    :cond_6
    return-object v5
.end method

.method private fillupYellowpage()V
    .locals 4

    .prologue
    const/4 v1, 0x3

    .line 89
    invoke-static {}, Lcom/android/browser/util/LanguageUtil;->isInternationalVersion()Z

    move-result v0

    .line 90
    .local v0, isInternationalVersion:Z
    iget-object v2, p0, Lcom/android/browser/MiuiYellowpagePage;->mYellowpage:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->removeAllViews()V

    .line 92
    iget v2, p0, Lcom/android/browser/MiuiYellowpagePage;->mOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 93
    iget-object v2, p0, Lcom/android/browser/MiuiYellowpagePage;->categoryListViewLandscape:Landroid/widget/LinearLayout;

    if-nez v2, :cond_0

    .line 94
    if-eqz v0, :cond_1

    .line 95
    .local v1, sitesNumPerRow:I
    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/android/browser/MiuiYellowpagePage;->fillCategoryListView(IZ)Landroid/widget/LinearLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/MiuiYellowpagePage;->categoryListViewLandscape:Landroid/widget/LinearLayout;

    .line 98
    .end local v1           #sitesNumPerRow:I
    :cond_0
    iget-object v2, p0, Lcom/android/browser/MiuiYellowpagePage;->mYellowpage:Landroid/widget/ScrollView;

    iget-object v3, p0, Lcom/android/browser/MiuiYellowpagePage;->categoryListViewLandscape:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 108
    :goto_1
    return-void

    .line 94
    :cond_1
    const/16 v1, 0xa

    goto :goto_0

    .line 101
    :cond_2
    iget-object v2, p0, Lcom/android/browser/MiuiYellowpagePage;->categoryListViewPortrait:Landroid/widget/LinearLayout;

    if-nez v2, :cond_3

    .line 102
    if-eqz v0, :cond_4

    .line 103
    .restart local v1       #sitesNumPerRow:I
    :goto_2
    invoke-direct {p0, v1, v0}, Lcom/android/browser/MiuiYellowpagePage;->fillCategoryListView(IZ)Landroid/widget/LinearLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/MiuiYellowpagePage;->categoryListViewPortrait:Landroid/widget/LinearLayout;

    .line 106
    .end local v1           #sitesNumPerRow:I
    :cond_3
    iget-object v2, p0, Lcom/android/browser/MiuiYellowpagePage;->mYellowpage:Landroid/widget/ScrollView;

    iget-object v3, p0, Lcom/android/browser/MiuiYellowpagePage;->categoryListViewPortrait:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 102
    :cond_4
    const/4 v1, 0x5

    goto :goto_2
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 82
    iget v0, p0, Lcom/android/browser/MiuiYellowpagePage;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 83
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/browser/MiuiYellowpagePage;->mOrientation:I

    .line 84
    invoke-direct {p0}, Lcom/android/browser/MiuiYellowpagePage;->fillupYellowpage()V

    .line 86
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, -0x1

    .line 55
    iput-object p1, p0, Lcom/android/browser/MiuiYellowpagePage;->mInflater:Landroid/view/LayoutInflater;

    .line 56
    new-instance v0, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lcom/android/browser/MiuiYellowpagePage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/browser/MiuiYellowpagePage;->mYellowpage:Landroid/widget/ScrollView;

    .line 57
    iget-object v0, p0, Lcom/android/browser/MiuiYellowpagePage;->mYellowpage:Landroid/widget/ScrollView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/browser/MiuiYellowpagePage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/browser/MiuiYellowpagePage;->mOrientation:I

    .line 61
    invoke-direct {p0}, Lcom/android/browser/MiuiYellowpagePage;->fillupYellowpage()V

    .line 62
    iget-object v0, p0, Lcom/android/browser/MiuiYellowpagePage;->mYellowpage:Landroid/widget/ScrollView;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/android/browser/MiuiYellowpagePage;->categoryListViewLandscape:Landroid/widget/LinearLayout;

    .line 75
    iput-object v0, p0, Lcom/android/browser/MiuiYellowpagePage;->categoryListViewPortrait:Landroid/widget/LinearLayout;

    .line 76
    iput-object v0, p0, Lcom/android/browser/MiuiYellowpagePage;->mYellowpage:Landroid/widget/ScrollView;

    .line 77
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 78
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/browser/MiuiYellowpagePage;->mYellowpage:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->removeAllViews()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/MiuiYellowpagePage;->mYellowpage:Landroid/widget/ScrollView;

    .line 69
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 70
    return-void
.end method
