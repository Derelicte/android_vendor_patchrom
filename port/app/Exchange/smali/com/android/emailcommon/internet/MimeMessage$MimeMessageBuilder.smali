.class Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;
.super Ljava/lang/Object;
.source "MimeMessage.java"

# interfaces
.implements Lorg/apache/james/mime4j/ContentHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/internet/MimeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MimeMessageBuilder"
.end annotation


# instance fields
.field private stack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/emailcommon/internet/MimeMessage;


# direct methods
.method public constructor <init>(Lcom/android/emailcommon/internet/MimeMessage;)V
    .locals 1
    .parameter

    .prologue
    .line 506
    iput-object p1, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->this$0:Lcom/android/emailcommon/internet/MimeMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 504
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    .line 507
    return-void
.end method

.method private expect(Ljava/lang/Class;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 511
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal stack error: Expected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' found \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 514
    :cond_0
    return-void
.end method


# virtual methods
.method public body(Lorg/apache/james/mime4j/BodyDescriptor;Ljava/io/InputStream;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 568
    const-class v0, Lcom/android/emailcommon/mail/Part;

    invoke-direct {p0, v0}, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 569
    invoke-virtual {p1}, Lorg/apache/james/mime4j/BodyDescriptor;->getTransferEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/emailcommon/internet/MimeUtility;->decodeBody(Ljava/io/InputStream;Ljava/lang/String;)Lcom/android/emailcommon/mail/Body;

    move-result-object v1

    .line 571
    :try_start_0
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/mail/Part;

    invoke-interface {v0, v1}, Lcom/android/emailcommon/mail/Part;->setBody(Lcom/android/emailcommon/mail/Body;)V
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 575
    return-void

    .line 572
    :catch_0
    move-exception v0

    .line 573
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public endBodyPart()V
    .locals 1

    .prologue
    .line 594
    const-class v0, Lcom/android/emailcommon/mail/BodyPart;

    invoke-direct {p0, v0}, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 595
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 596
    return-void
.end method

.method public endHeader()V
    .locals 1

    .prologue
    .line 551
    const-class v0, Lcom/android/emailcommon/mail/Part;

    invoke-direct {p0, v0}, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 552
    return-void
.end method

.method public endMessage()V
    .locals 1

    .prologue
    .line 532
    const-class v0, Lcom/android/emailcommon/internet/MimeMessage;

    invoke-direct {p0, v0}, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 533
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 534
    return-void
.end method

.method public endMultipart()V
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 579
    return-void
.end method

.method public epilogue(Ljava/io/InputStream;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 599
    const-class v0, Lcom/android/emailcommon/internet/MimeMultipart;

    invoke-direct {p0, v0}, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 600
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 602
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 603
    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 606
    :cond_0
    return-void
.end method

.method public field(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 541
    const-class v0, Lcom/android/emailcommon/mail/Part;

    invoke-direct {p0, v0}, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 543
    :try_start_0
    const-string v0, ":"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 544
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/mail/Part;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/emailcommon/mail/Part;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    return-void

    .line 545
    :catch_0
    move-exception v0

    .line 546
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public preamble(Ljava/io/InputStream;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 609
    const-class v0, Lcom/android/emailcommon/internet/MimeMultipart;

    invoke-direct {p0, v0}, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 610
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 612
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 613
    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 616
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/internet/MimeMultipart;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/internet/MimeMultipart;->setPreamble(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 620
    return-void

    .line 617
    :catch_0
    move-exception v0

    .line 618
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public raw(Ljava/io/InputStream;)V
    .locals 2
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 623
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startBodyPart()V
    .locals 2

    .prologue
    .line 582
    const-class v0, Lcom/android/emailcommon/internet/MimeMultipart;

    invoke-direct {p0, v0}, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 585
    :try_start_0
    new-instance v1, Lcom/android/emailcommon/internet/MimeBodyPart;

    invoke-direct {v1}, Lcom/android/emailcommon/internet/MimeBodyPart;-><init>()V

    .line 586
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/internet/MimeMultipart;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/internet/MimeMultipart;->addBodyPart(Lcom/android/emailcommon/mail/BodyPart;)V

    .line 587
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 591
    return-void

    .line 588
    :catch_0
    move-exception v0

    .line 589
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public startHeader()V
    .locals 1

    .prologue
    .line 537
    const-class v0, Lcom/android/emailcommon/mail/Part;

    invoke-direct {p0, v0}, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 538
    return-void
.end method

.method public startMessage()V
    .locals 2

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    iget-object v1, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->this$0:Lcom/android/emailcommon/internet/MimeMessage;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    :goto_0
    return-void

    .line 520
    :cond_0
    const-class v0, Lcom/android/emailcommon/mail/Part;

    invoke-direct {p0, v0}, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 522
    :try_start_0
    new-instance v1, Lcom/android/emailcommon/internet/MimeMessage;

    invoke-direct {v1}, Lcom/android/emailcommon/internet/MimeMessage;-><init>()V

    .line 523
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/mail/Part;

    invoke-interface {v0, v1}, Lcom/android/emailcommon/mail/Part;->setBody(Lcom/android/emailcommon/mail/Body;)V

    .line 524
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 525
    :catch_0
    move-exception v0

    .line 526
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public startMultipart(Lorg/apache/james/mime4j/BodyDescriptor;)V
    .locals 3
    .parameter

    .prologue
    .line 555
    const-class v0, Lcom/android/emailcommon/mail/Part;

    invoke-direct {p0, v0}, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 557
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/mail/Part;

    .line 559
    :try_start_0
    new-instance v1, Lcom/android/emailcommon/internet/MimeMultipart;

    invoke-interface {v0}, Lcom/android/emailcommon/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/emailcommon/internet/MimeMultipart;-><init>(Ljava/lang/String;)V

    .line 560
    invoke-interface {v0, v1}, Lcom/android/emailcommon/mail/Part;->setBody(Lcom/android/emailcommon/mail/Body;)V

    .line 561
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    return-void

    .line 562
    :catch_0
    move-exception v0

    .line 563
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
