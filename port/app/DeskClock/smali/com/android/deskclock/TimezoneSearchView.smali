.class public Lcom/android/deskclock/TimezoneSearchView;
.super Landroid/app/Activity;
.source "TimezoneSearchView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/TimezoneSearchView$TimezoneAdapter;
    }
.end annotation


# instance fields
.field private mListView:Landroid/widget/ListView;

.field private mSearchView:Landroid/widget/SearchView;

.field private mTimezoneAdapter:Lcom/android/deskclock/TimezoneSearchView$TimezoneAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 73
    return-void
.end method

.method private setupSearchView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 45
    iget-object v0, p0, Lcom/android/deskclock/TimezoneSearchView;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 46
    iget-object v0, p0, Lcom/android/deskclock/TimezoneSearchView;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setSubmitButtonEnabled(Z)V

    .line 47
    iget-object v0, p0, Lcom/android/deskclock/TimezoneSearchView;->mSearchView:Landroid/widget/SearchView;

    const/high16 v1, 0x7f02

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setBackgroundResource(I)V

    .line 48
    iget-object v0, p0, Lcom/android/deskclock/TimezoneSearchView;->mSearchView:Landroid/widget/SearchView;

    const v1, 0x7f0b0051

    invoke-virtual {p0, v1}, Lcom/android/deskclock/TimezoneSearchView;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v0, p0, Lcom/android/deskclock/TimezoneSearchView;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 51
    iget-object v0, p0, Lcom/android/deskclock/TimezoneSearchView;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 52
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lcom/android/deskclock/TimezoneSearchView;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 34
    const v0, 0x7f040013

    invoke-virtual {p0, v0}, Lcom/android/deskclock/TimezoneSearchView;->setContentView(I)V

    .line 36
    const v0, 0x7f0f0043

    invoke-virtual {p0, v0}, Lcom/android/deskclock/TimezoneSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    iput-object v0, p0, Lcom/android/deskclock/TimezoneSearchView;->mSearchView:Landroid/widget/SearchView;

    .line 37
    const v0, 0x7f0f0044

    invoke-virtual {p0, v0}, Lcom/android/deskclock/TimezoneSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/deskclock/TimezoneSearchView;->mListView:Landroid/widget/ListView;

    .line 38
    new-instance v0, Lcom/android/deskclock/TimezoneSearchView$TimezoneAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/android/deskclock/TimezoneSearchView$TimezoneAdapter;-><init>(Lcom/android/deskclock/TimezoneSearchView;Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/deskclock/TimezoneSearchView;->mTimezoneAdapter:Lcom/android/deskclock/TimezoneSearchView$TimezoneAdapter;

    .line 39
    iget-object v0, p0, Lcom/android/deskclock/TimezoneSearchView;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/deskclock/TimezoneSearchView;->mTimezoneAdapter:Lcom/android/deskclock/TimezoneSearchView$TimezoneAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 40
    iget-object v0, p0, Lcom/android/deskclock/TimezoneSearchView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 41
    invoke-direct {p0}, Lcom/android/deskclock/TimezoneSearchView;->setupSearchView()V

    .line 42
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/deskclock/TimezoneSearchView;->mTimezoneAdapter:Lcom/android/deskclock/TimezoneSearchView$TimezoneAdapter;

    invoke-virtual {v1, p3}, Lcom/android/deskclock/TimezoneSearchView$TimezoneAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/TimezonePicker$TimezoneItem;

    .line 69
    .local v0, item:Lcom/android/deskclock/TimezonePicker$TimezoneItem;
    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.intent.extra.TEXT"

    iget-object v4, v0, Lcom/android/deskclock/TimezonePicker$TimezoneItem;->mId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/deskclock/TimezoneSearchView;->setResult(ILandroid/content/Intent;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/deskclock/TimezoneSearchView;->finish()V

    .line 71
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .parameter "newText"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/deskclock/TimezoneSearchView;->mTimezoneAdapter:Lcom/android/deskclock/TimezoneSearchView$TimezoneAdapter;

    invoke-virtual {v0, p1}, Lcom/android/deskclock/TimezoneSearchView$TimezoneAdapter;->notifyTimezonesListOnQueryChange(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/android/deskclock/TimezoneSearchView;->mTimezoneAdapter:Lcom/android/deskclock/TimezoneSearchView$TimezoneAdapter;

    invoke-virtual {v0}, Lcom/android/deskclock/TimezoneSearchView$TimezoneAdapter;->notifyDataSetChanged()V

    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .parameter "query"

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method
