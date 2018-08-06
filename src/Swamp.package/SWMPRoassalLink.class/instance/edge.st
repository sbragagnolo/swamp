creation
edge
	^ edge
		ifNil: [ edge := RTEdge on: self from: from asElement to: to asElement.
			edge := edge
				+
					(RTArrowedLine new
						withBorderAttachPoint;
						width: 0.2;
						color: from asElement trachelShape strokePaint;
						yourself) ]