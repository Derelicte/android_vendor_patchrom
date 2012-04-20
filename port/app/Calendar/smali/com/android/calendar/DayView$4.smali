.class Lcom/android/calendar/DayView$4;
.super Ljava/lang/Object;
.source "DayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/DayView;->reloadEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/DayView;

.field final synthetic val$events:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/calendar/DayView;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1974
    iput-object p1, p0, Lcom/android/calendar/DayView$4;->this$0:Lcom/android/calendar/DayView;

    iput-object p2, p0, Lcom/android/calendar/DayView$4;->val$events:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1976
    iget-object v2, p0, Lcom/android/calendar/DayView$4;->this$0:Lcom/android/calendar/DayView;

    iget-object v3, p0, Lcom/android/calendar/DayView$4;->val$events:Ljava/util/ArrayList;

    #setter for: Lcom/android/calendar/DayView;->mEvents:Ljava/util/ArrayList;
    invoke-static {v2, v3}, Lcom/android/calendar/DayView;->access$1102(Lcom/android/calendar/DayView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1977
    iget-object v2, p0, Lcom/android/calendar/DayView$4;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mAllDayEvents:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/calendar/DayView;->access$1200(Lcom/android/calendar/DayView;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1978
    iget-object v2, p0, Lcom/android/calendar/DayView$4;->this$0:Lcom/android/calendar/DayView;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/android/calendar/DayView;->mAllDayEvents:Ljava/util/ArrayList;
    invoke-static {v2, v3}, Lcom/android/calendar/DayView;->access$1202(Lcom/android/calendar/DayView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1984
    :goto_0
    iget-object v2, p0, Lcom/android/calendar/DayView$4;->val$events:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Event;

    .line 1985
    .local v0, e:Lcom/android/calendar/Event;
    invoke-virtual {v0}, Lcom/android/calendar/Event;->drawAsAllday()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1986
    iget-object v2, p0, Lcom/android/calendar/DayView$4;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mAllDayEvents:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/calendar/DayView;->access$1200(Lcom/android/calendar/DayView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1980
    .end local v0           #e:Lcom/android/calendar/Event;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lcom/android/calendar/DayView$4;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mAllDayEvents:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/calendar/DayView;->access$1200(Lcom/android/calendar/DayView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 1991
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    iget-object v2, p0, Lcom/android/calendar/DayView$4;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mLayouts:[Landroid/text/StaticLayout;
    invoke-static {v2}, Lcom/android/calendar/DayView;->access$1300(Lcom/android/calendar/DayView;)[Landroid/text/StaticLayout;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/calendar/DayView$4;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mLayouts:[Landroid/text/StaticLayout;
    invoke-static {v2}, Lcom/android/calendar/DayView;->access$1300(Lcom/android/calendar/DayView;)[Landroid/text/StaticLayout;

    move-result-object v2

    array-length v2, v2

    iget-object v3, p0, Lcom/android/calendar/DayView$4;->val$events:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 1992
    :cond_3
    iget-object v2, p0, Lcom/android/calendar/DayView$4;->this$0:Lcom/android/calendar/DayView;

    iget-object v3, p0, Lcom/android/calendar/DayView$4;->val$events:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/text/StaticLayout;

    #setter for: Lcom/android/calendar/DayView;->mLayouts:[Landroid/text/StaticLayout;
    invoke-static {v2, v3}, Lcom/android/calendar/DayView;->access$1302(Lcom/android/calendar/DayView;[Landroid/text/StaticLayout;)[Landroid/text/StaticLayout;

    .line 1997
    :goto_2
    iget-object v2, p0, Lcom/android/calendar/DayView$4;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mAllDayLayouts:[Landroid/text/StaticLayout;
    invoke-static {v2}, Lcom/android/calendar/DayView;->access$1400(Lcom/android/calendar/DayView;)[Landroid/text/StaticLayout;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/calendar/DayView$4;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mAllDayLayouts:[Landroid/text/StaticLayout;
    invoke-static {v2}, Lcom/android/calendar/DayView;->access$1400(Lcom/android/calendar/DayView;)[Landroid/text/StaticLayout;

    move-result-object v2

    array-length v2, v2

    iget-object v3, p0, Lcom/android/calendar/DayView$4;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mAllDayEvents:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/calendar/DayView;->access$1200(Lcom/android/calendar/DayView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 1998
    :cond_4
    iget-object v2, p0, Lcom/android/calendar/DayView$4;->this$0:Lcom/android/calendar/DayView;

    iget-object v3, p0, Lcom/android/calendar/DayView$4;->val$events:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/text/StaticLayout;

    #setter for: Lcom/android/calendar/DayView;->mAllDayLayouts:[Landroid/text/StaticLayout;
    invoke-static {v2, v3}, Lcom/android/calendar/DayView;->access$1402(Lcom/android/calendar/DayView;[Landroid/text/StaticLayout;)[Landroid/text/StaticLayout;

    .line 2003
    :goto_3
    iget-object v2, p0, Lcom/android/calendar/DayView$4;->this$0:Lcom/android/calendar/DayView;

    #calls: Lcom/android/calendar/DayView;->computeEventRelations()V
    invoke-static {v2}, Lcom/android/calendar/DayView;->access$1500(Lcom/android/calendar/DayView;)V

    .line 2005
    iget-object v2, p0, Lcom/android/calendar/DayView$4;->this$0:Lcom/android/calendar/DayView;

    #setter for: Lcom/android/calendar/DayView;->mRemeasure:Z
    invoke-static {v2, v4}, Lcom/android/calendar/DayView;->access$1602(Lcom/android/calendar/DayView;Z)Z

    .line 2006
    iget-object v2, p0, Lcom/android/calendar/DayView$4;->this$0:Lcom/android/calendar/DayView;

    #setter for: Lcom/android/calendar/DayView;->mComputeSelectedEvents:Z
    invoke-static {v2, v4}, Lcom/android/calendar/DayView;->access$1702(Lcom/android/calendar/DayView;Z)Z

    .line 2007
    iget-object v2, p0, Lcom/android/calendar/DayView$4;->this$0:Lcom/android/calendar/DayView;

    #calls: Lcom/android/calendar/DayView;->recalc()V
    invoke-static {v2}, Lcom/android/calendar/DayView;->access$1800(Lcom/android/calendar/DayView;)V

    .line 2009
    iget-object v2, p0, Lcom/android/calendar/DayView$4;->this$0:Lcom/android/calendar/DayView;

    invoke-virtual {v2}, Lcom/android/calendar/DayView;->invalidate()V

    .line 2010
    return-void

    .line 1994
    :cond_5
    iget-object v2, p0, Lcom/android/calendar/DayView$4;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mLayouts:[Landroid/text/StaticLayout;
    invoke-static {v2}, Lcom/android/calendar/DayView;->access$1300(Lcom/android/calendar/DayView;)[Landroid/text/StaticLayout;

    move-result-object v2

    invoke-static {v2, v5}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 2000
    :cond_6
    iget-object v2, p0, Lcom/android/calendar/DayView$4;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mAllDayLayouts:[Landroid/text/StaticLayout;
    invoke-static {v2}, Lcom/android/calendar/DayView;->access$1400(Lcom/android/calendar/DayView;)[Landroid/text/StaticLayout;

    move-result-object v2

    invoke-static {v2, v5}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3
.end method
