CFLAGS += -g
pbuffer-test: pbuffer-test.c wrap.o compiler-wrap.o hook.o
	gcc $(CPPFLAGS) $(CFLAGS) $^ -o pbuffer-test $(LDFLAGS) -lEGL -lGLESv2
clean:
	rm pbuffer-test wrap.o compiler-wrap.o hook.o
